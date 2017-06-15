# XHToastSwift
#### 简洁轻便提示工具,一行代码,既可完成提示信息显示.

[![AppVeyor](https://img.shields.io/appveyor/ci/gruntjs/grunt.svg?maxAge=2592000)](https://github.com/CoderZhuXH/XHToastSwift)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/CoderZhuXH/XHToastSwift)
[![Version Status](https://img.shields.io/cocoapods/v/XHToastSwift.svg?style=flat)](http://cocoadocs.org/docsets/XHToastSwift)
![Support](https://img.shields.io/badge/support-iOS%209%2B-brightgreen.svg)
[![Pod Platform](https://img.shields.io/cocoapods/p/XHToastSwift.svg?style=flat)](http://cocoadocs.org/docsets/XHToastSwift)
[![Pod License](https://img.shields.io/cocoapods/l/XHToastSwift.svg?style=flat)](https://github.com/CoderZhuXH/XHToastSwift/blob/master/LICENSE)

==============

#### OC版本请戳这里>>> https://github.com/CoderZhuXH/XHToast
### 技术交流群(群号:537476189)

## 效果
![image](https://github.com/CoderZhuXH/XHToastSwift/blob/master/DEMO.gif)

## 使用方法
#### 1.普通调用
```swift
    /*
    您只需要调用一行代码,既可完成提示信息显示
    */
   
   //1.在window上显示toast
 
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


    //2.你也可以这样调用,在view上显示toast
    /*
    中间显示
    */
     self.view.showXHToastCenterWithText("您要显示的提示信息")

    /*
    上方显示
    */
    self.view.showXHToastTopWithText("您要显示的提示信息")

    /**
    * 底端显示
    */
    self.view.showXHToastBottomWithText("您要显示的提示信息")

```
#### 2.自定义Toast停留时间+到屏幕上端/下端距离(见如下方法)
##### 1.显示至window
```swift

    // MARK:-中间显示

    /**
     中间显示+自定义时间
     
     - parameter text:     文字
     - parameter duration: 自定义停留时间
     */
    public class func showCenterWithText(_ text:String, duration:CGFloat)

    // MARK:-上方显示

    /**
     上方显示+自定义停留时间
     
     - parameter text:     文字
     - parameter duration: 自定义停留时间
     */
    public class func showTopWithText(_ text:String, duration:CGFloat)

    /**
     上方显示+自定义到顶部距离
     
     - parameter text:      文字
     - parameter topOffset: 自定义到顶部距离
     */
    public class func showTopWithText(_ text:String,topOffset:CGFloat)

    /**
     上方显示+自定义到顶部距离+自定义停留时间
     
     - parameter text:      文字
     - parameter topOffset: 自定义到顶部距离
     - parameter duration:  自定义停留时间
     */
    public class func showTopWithText(_ text:String, topOffset:CGFloat,duration:CGFloat)

    // MARK:-下方显示

    /**
     下方显示+自定义停留时间
     
     - parameter text:     文字
     - parameter duration: 自定义停留时间
     */
    public class func showBottomWithText(_ text:String,duration:CGFloat)

    /**
     下方显示+自定义到底部距离
     
     - parameter text:         文字
     - parameter bottomOffset: 自定义到底部距离
     */
    public class func showBottomWithText(_ text:String,bottomOffset:CGFloat)

    /**
     下方显示+自定义到底部距离+自定义停留时间
     
     - parameter text:         文字
     - parameter bottomOffset: 自定义到底部距离
     - parameter duration:     自定义停留时间
     */
    public class func showBottomWithText(_ text:String,bottomOffset:CGFloat,duration:CGFloat)

```
##### 2.显示至view

```objc

 // MARK:- 中间显示
    

    /// 中间显示+自定义停留时间
    ///
    /// - Parameters:
    ///   - text: 文字
    ///   - duration: 自定义停留时间
    public func showXHToastCenterWithText(_ text:String , duration:CGFloat)

    
    /// 上方显示+自定义停留时间
    ///
    /// - Parameters:
    ///   - text: 文字
    ///   - duration: 自定义停留时间
    public func showXHToastTopWithText(_ text:String,  duration:CGFloat)

    
  // MARK:- 上方显示 

    /// 上方显示+自定义到顶部距离
    ///
    /// - Parameters:
    ///   - text: 文字
    ///   - topOffset: 自定义到顶部距离
    public func showXHToastTopWithText(_ text:String,topOffset:CGFloat)
    
    
    /// 上方显示+自定义到顶部距离+自定义停留时间
    ///
    /// - Parameters:
    ///   - text: 文字
    ///   - topOffset: 自定义到顶部距离
    ///   - duration: 自定义停留时间
    public  func showXHToastTopWithText(_ text:String,topOffset:CGFloat,duration:CGFloat) 
    

  // MARK:- 下方显示    

    /// 下方显示+自定义停留时间
    ///
    /// - Parameters:
    ///   - text: 文字
    ///   - duration: 自定义停留时间
    public func showXHToastBottomWithText(_ text:String,  duration:CGFloat)

    
    /// 下方显示+自定义到顶部距离
    ///
    /// - Parameters:
    ///   - text: 文字
    ///   - topOffset: 自定义到顶部距离
    public func showXHToastBottomWithText(_ text:String,bottomOffset:CGFloat)

    
    /// 下方显示+自定义到顶部距离+自定义停留时间
    ///
    /// - Parameters:
    ///   - text: 文字
    ///   - topOffset: 自定义到顶部距离
    ///   - duration: 自定义停留时间
    public  func showXHToastBottomWithText(_ text:String,bottomOffset:CGFloat,duration:CGFloat)


```
##  安装
### 1.手动添加:<br>
*   1.将 XHToastSwift文件夹添加到工程目录中即可<br>

### 2.CocoaPods:<br>
*   1.在 Podfile 中添加 pod 'XHToastSwift'<br>
*   2.执行 pod install 或 pod update<br>
*   3.导入 import XHToastSwift

### 3.Tips
*   1.如果发现pod search XHToastSwift 搜索出来的不是最新版本，需要在终端执行cd desktop退回到desktop，然后执行pod setup命令更新本地spec缓存（需要几分钟），然后再搜索就可以了
*   2.如果你发现你执行pod install后,导入的不是最新版本,请删除Podfile.lock文件,在执行一次 pod install

##  系统要求
*   该项目最低支持 iOS 9.0 和 Xcode 8

##  许可证
XHToast 使用 MIT 许可证，详情见 LICENSE 文件