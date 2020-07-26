/* promise形式的getSetting */
export const getSetting=()=>{
    return new Promise((resolve,reject)=>{
        wx.getSetting({
          success:(result)=>{
              resolve(result);
          },
          fail:(err)=>{
              reject(err);
          }
        });
    })
}

/* promise形式的chooseAddress */
export const chooseAddress=()=>{
    return new Promise((resolve,reject)=>{
        wx.chooseAddress({
          success:(result)=>{
              resolve(result);
          },
          fail:(err)=>{
              reject(err);
          }
        });
    })
}

/* promise形式的openSetting */
export const openSetting=()=>{
    return new Promise((resolve,reject)=>{
        wx.openSetting({
          success:(result)=>{
              resolve(result);
          },
          fail:(err)=>{
              reject(err);
          }
        });
    })
}

/* promise形式的showModal 
   @param{object} param0参数
*/
export const showModal=({content})=>{
    return new Promise((resolve,reject)=>{
        wx.showModal({
            title:'提示',
            content:content,
            success:(res)=>{
                resolve(res);
            },
            fail:(err)=>{
                reject(err);
            }
        })
    })
}