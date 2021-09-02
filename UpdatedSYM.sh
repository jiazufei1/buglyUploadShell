#!/bin/sh

#  UpdatedSYM.sh
#  
#
#  Created by caofei on 2021/9/2.
#  用于Bugly符号表上传，项目更改需要对以下参数进行修改

#开始上传
upload(){
    echo "upload..."
    java -jar buglyqq-upload-symbol.jar -appid $appid -appkey $appkey -bundleid $bundleid -version $version -platform $platform -inputSymbol $path
    echo "end!"

}

#根据实际项目进行修改
#在bugly.qq.com上产品对应的appid
appid=""
#在bugly.qq.com上产品对应的appkey
appkey=""
#Android平台是包名、iOS平台叫bundle id
bundleid=""
#平台类型，当前支持的三个选项 分别是 Android、IOS，注意大小写要正确
platform="IOS"

echo "请输入符号表版本号:"
read version
echo "请输入符号表版路径(请将dSYM拖拽到桌面，然后再拖过来):"
read path

#调用开始上传
upload

