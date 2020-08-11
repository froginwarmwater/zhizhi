/* 用户上滑页面 滚动条触底 开始加载下一页数据
    1 找到滚动条触底事件
    2 判断还有没有下一页数据
      获取到总页数(只有总条数total)及当前页码(pagenum)——>只要判断当前的页码是否是大于等于总页数 
        是:表示没有下一页
        总页数=Math.ceil(总条数total/页容量pagesize)
    3 假如没有 弹出提示
    4 假如有 加载
        a 当前页码++
        b 重新发送请求
        c 数据请求回来 要对data中的数组进行拼接而不是全部替换
*/
/*下拉刷新页面
    1 触发下拉刷新事件 需要在页面的json文件中开启一个配置项
        找到触发下拉刷新的事件
    2 重置数据数组
    3 重置页码 设置为1
    4 重新发送请求
    5 数据请求回来 需要手动关闭等待效果
*/
import {request} from "../../request/index.js";
import regeneratorRuntime from '../../lib/runtime/runtime';
Page({
  data: {
    tabs:[
      {
        id:0,
        value:"综合",
        isActive:true
      },
      {
        id:1,
        value:"销量",
        isActive:false
      },
      {
        id:2,
        value:"价格",
        isActive:false
      }
    ],
    goodsList:[]
  },
  //接口要的参数
  QueryParams:{
    query:"",
    cid:"",
    pagenum:1,
    pagesize:10
  },
  //总页数
  totalPages:1,
  //标题点击事件 从子组件传递过来
  handleTabsItemChange(e){
    //获取被点击的标题索引
    const {index}=e.detail;
    //修改源数组
    let {tabs}=this.data;
    tabs.forEach((v,i)=>i===index?v.isActive=true:v.isActive=false);
    //赋值到data中
    this.setData({
      tabs
    })
  },
  onLoad: function (options) {
    this.QueryParams.cid=options.cid||"";
    this.QueryParams.query=options.query||"";
    this.getGoodList();
  },
  //获取商品列表数据
  async getGoodList(){
    const res=await request({url:"/goods/search",data:this.QueryParams});
    //获取总条数
    const total=res.total;
    //计算总页数
    this.totalPages=Math.ceil(total/this.QueryParams.pagesize);
    //  
    this.setData({
      //拼接的数组
      goodsList:[...this.data.goodsList,...res.goods]
    })
    //关闭下拉刷新的窗口 如果没有调用下拉刷新的窗口 直接关闭也不会报错
    wx.stopPullDownRefresh();
  },
  //页面上滑 滚动条触底事件
  onReachBottom(){
    // console.log("页面触底");
    //判断还有没有下一页数据
    if(this.QueryParams.pagenum>=this.totalPages){
      //console.log("没有下一页");
      wx.showToast({
        title: '没有下一页数据',
      });
        
    }
    else{
      // console.log("有下一页");
      this.QueryParams.pagenum++;
      this.getGoodList();
    }
  },
  //下拉刷新事件
  onPullDownRefresh(){
    // console.log("刷新");
    //1 重置数组
    this.setData({
      goodsList:[]
    })
    //2 重置页码
    this.QueryParams.pagenum=1;
    //3 重新发送请求
    this.getGoodList();
  }
})