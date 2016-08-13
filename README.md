# XHToast-Swift
##### 简洁轻便提示工具,一行代码,既可完成提示信息显示.
#####[OC版本请戳此处>>>](https://github.com/CoderZhuXH/XHToast)
### 技术交流群(群号:537476189)

## 效果
![image](http://d3.freep.cn/3tb_160813142852a24n569478.gif)

## 使用方法
#### 1.普通调用
```swift
    /*
    您只需要调用一行代码,既可完成提示信息显示
    */
 
    /*
    中间显示
    */
    XHToast.showCenterWithText("您要显示的提示信息")

    /*
    上方显示
    */
    XHToast.showTopWithText("您要显示的提示信息")

    /*
    下方显示
    */
    XHToast.showBottomWithText("您要显示的提示信息")

```
#### 2.自定义Toast停留时间+到屏幕上端/下端距离(见如下方法)
```swift

    // MARK:-中间显示

    /**
     中间显示+自定义时间
     
     - parameter text:     文字
     - parameter duration: 自定义停留时间
     */
    class func showCenterWithText(text:String, duration:CGFloat)

    // MARK:-上方显示

    /**
     上方显示+自定义停留时间
     
     - parameter text:     文字
     - parameter duration: 自定义停留时间
     */
    class func showTopWithText(text:String, duration:CGFloat)

    /**
     上方显示+自定义到顶部距离
     
     - parameter text:      文字
     - parameter topOffset: 自定义到顶部距离
     */
    class func showTopWithText(text:String,topOffset:CGFloat)

    /**
     上方显示+自定义到顶部距离+自定义停留时间
     
     - parameter text:      文字
     - parameter topOffset: 自定义到顶部距离
     - parameter duration:  自定义停留时间
     */
    class func showTopWithText(text:String, topOffset:CGFloat,duration:CGFloat)

    // MARK:-下方显示

    /**
     下方显示+自定义停留时间
     
     - parameter text:     文字
     - parameter duration: 自定义停留时间
     */
    class func showBottomWithText(text:String,duration:CGFloat)

    /**
     下方显示+自定义到底部距离
     
     - parameter text:         文字
     - parameter bottomOffset: 自定义到底部距离
     */
    class func showBottomWithText(text:String,bottomOffset:CGFloat)

    /**
     下方显示+自定义到底部距离+自定义停留时间
     
     - parameter text:         文字
     - parameter bottomOffset: 自定义到底部距离
     - parameter duration:     自定义停留时间
     */
    class func showBottomWithText(text:String,bottomOffset:CGFloat,duration:CGFloat)

```

##  安装
### 1.手动添加:<br>
*   1.将 XHToast-Swift文件夹添加到工程目录中即可<br>

### 2.CocoaPods:<br>
*   1.在 Podfile 中添加 pod 'XHToast-Swift'<br>
*   2.执行 pod install 或 pod update<br>

### 3.Tips
*    如果你发现你执行`pod install`后,导入的不是最新的,请删除`Podfile.lock`文件,在执行一次 `pod install` 

##  系统要求
*   该项目最低支持 iOS 8.0 和 Xcode 7.3

##  许可证
XHToast 使用 MIT 许可证，详情见 LICENSE 文件