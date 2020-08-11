// pages/collect/index.js
Page({
  data: {
    collect:[],
    tabs:[
      {
        id:0,
        value:"商品收藏",
        isActive:true
      },
      {
        id:1,
        value:"品牌收藏",
        isActive:false
      },
      {
        id:2,
        value:"店铺收藏",
        isActive:false
      },
      {
        id:3,
        value:"浏览足迹",
        isActive:false
      }
    ]
  },
  onShow(){
    const collect=wx.getStorageSync("collect")||[];
    this.setData({
      collect
    });
  },
  handleTabsItemChange(e){
    // 1 获取被点击的标题索引
    const {index}=e.detail;
    //修改源数组
    let {tabs}=this.data;
    tabs.forEach((v,i)=>i===index?v.isActive=true:v.isActive=false);
    //赋值到data中
    this.setData({
      tabs
    })
  }
})