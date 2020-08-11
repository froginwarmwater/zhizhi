import {request} from "../../request/index.js";
import regeneratorRuntime from '../../lib/runtime/runtime';
import {login} from "../../utils/asyncWx.js";
Page({
  //获取用户信息
  async handleGetUserInfo(e){
    try {
      // 1 获取用户信息
      const {encryptedData,rawData,signature,iv}=e.detail;
      // 2 获取小程序登录成功后的code值
      const {code}=await login();
      const loginParams={encryptedData,rawData,signature,iv,code};
      // 3 发送请求获取用户的token值
      const res=await request({url:"/my/orders/req_unifiedorder",data:loginParams,method:"post"});
      // 4 把token存入缓存中 同时跳转回上一个页面
      wx.setStorageSync('token', 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOjIzLCJpYXQiOjE1NjQ3MzAwNzksImV4cCI6MTAwMTU2NDczMDA3OH0.YPt-XeLnjV-_1ITaXGY2FhxmCe4NvXuRnRB8OMCfnPo');
      //wx.setStorageSync("token", token);
      wx.navigateBack({
        delta: 1
      });
    } catch (error) {
      console.log(error); 
    }
  }
})