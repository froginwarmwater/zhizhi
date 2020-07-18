<script src="http://cdn.loveqiao.com/jquery.js"></script>
<script type="text/javascript">
　　var
　　　　fileInput = document.getElementById('test-image-file'),
       info = document.getElementById('test-file-info'),
       preview = document.getElementById('test-image-preview');
       // 监听change事件:
       fileInput.addEventListener('change', function() {
       　　// 清除背景图片:
          preview.style.backgroundImage = '';
          // 检查文件是否选择:
          if(!fileInput.value) {
               info.innerHTML = '没有选择文件';
                   return;
          }                    
          // 获取File引用:
          var file = fileInput.files[0];
          //判断文件大小
          var size = file.size;
          if(size >= 1*1024*1024){
                alert('文件大于1兆不行!');
                return false;
          }
          // 获取File信息:
          info.innerHTML = '文件: ' + file.name + '<br>' +
                           '大小: ' + file.size + '<br>' +
                           '修改: ' + file.lastModifiedDate;
          if(file.type !== 'image/jpeg' && file.type !== 'image/png' && file.type !== 'image/gif') {
              alert('不是有效的图片文件!');
              return;
                    
          // 读取文件:
          var reader = new FileReader();
                reader.onload = function(e) {
                　　var
                     　　data = e.target.result; // 'data:image/jpeg;base64,/9j/4AAQSk...(base64编码)...}'            
                     　　preview.style.backgroundImage = 'url(' + data + ')';
               };
                // 以DataURL的形式读取文件:
                reader.readAsDataURL(file);
                console.log(file);
           });
</script>