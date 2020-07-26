// pages/category/index.js
import {request} from "../../request/index.js";
import regeneratorRuntime from '../../lib/runtime/runtime';
Page({
  data: {
    //左侧的菜单数据
    leftMenuList:[],
    //右侧的商品数据
    rightContent:[],
    //被点击的左侧的菜单
    currentIndex:0,
    //右侧内容的滚动条距离顶部的距离
    scrollTop:0
  },
  //接口的返回数据
  Cates:[],

  onLoad: function (options) {
    /* 
      0、web本地存储和小程序的本地存储的区别
          ①web：localStorage.setItem("key","value") 
               localStorage.getItem("key")
          小程序：wx.setStorageSync("key","value")
                wx.getStorageSync("key")
          ②存的时候，有没有做类型转换
          web：不管存入的是什么类型的数据,最终都会x先调用一下toString()，把数据转化成字符串再存入
          小程序：不存在类型转换的操作,存什么类型的数据进去,获取的时候就是什么类型
      1、先判断一下本地存储中有没有旧的数据
          {time:Date.now(),data:[...]}
      2、没有旧的数据 直接发送新请求
      3、有旧的数据，同时旧的数据也没有过期，就使用本地存储中的旧数据即可 
    */
    //1、获取本地存储中的数据
    const Cates=wx.getStorageSync("cates");
    //2、判断
      //不存在 发送请求获取数据
    if(!Cates){
      this.getCates();
    }
      //有旧数据
    else{
      //定义过期的时间 10s
      if(Date.now()-Cates.time>1000*10){
        //重新发送请求
        this.getCates();
      }
      else{
        //可以使用旧的数据
        this.Cates=Cates.data;
        let leftMenuList=this.Cates.map(v=>v.cat_name);
        let rightContent=this.Cates[0].children;
        this.setData({
        leftMenuList,
        rightContent
        })
      }
    }
  },
  //获取分类数据
  async getCates(){
    // request({
    //   url:"/categories"
    // })
    // .then(res=>{
    // this.Cates=res.data.message;

    // //把接口的数据存入到本地存储中
    // wx.setStorageSync("cates", {time:Date.now(),data:this.Cates});

    // //构造左侧的大菜单数据
    // let leftMenuList=this.Cates.map(v=>v.cat_name);

    // //构造右侧的商品数据
    // let rightContent=this.Cates[0].children;
    //   this.setData({
    //    leftMenuList,
    //    rightContent
    //   })
    // })

    //使用es7的async await来发送请求
    const res=await request({url:"/categories"});
    this.Cates=res;

    //把接口的数据存入到本地存储中
    wx.setStorageSync("cates", {time:Date.now(),data:this.Cates});

    //构造左侧的大菜单数据
    let leftMenuList=this.Cates.map(v=>v.cat_name);

    //构造右侧的商品数据
    let rightContent=this.Cates[0].children;
      this.setData({
       leftMenuList,
       rightContent
      })
  },
  //左侧菜单的点击事件
  handleItemTap(e){
    /* 1、获取被点击的标题身上的索引 
       2、给data中的currentIndex赋值即可
       3、根据不同的索引来渲染右侧的商品内容 
    */
    const {index}=e.currentTarget.dataset;
    let rightContent=this.Cates[index].children;
    this.setData({
      currentIndex:index,
      rightContent,
      //重新设置右侧内容的scroll-view标签的距离顶部的距离
      scrollTop:0
    })
  }
})