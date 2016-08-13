//
//  XHToast.swift
//  XHToastSwiftExample
//
//  Created by xiaohui on 16/8/12.
//  Copyright © 2016年 qiantou. All rights reserved.
//  代码地址:https://github.com/CoderZhuXH/XHToast-Swift


import UIKit

/**
 *  Toast默认停留时间
 */
private let ToastDispalyDuration:CGFloat  = 1.2
/**
 *  Toast到顶端/底端默认距离
 */
private let ToastSpace:CGFloat = 100.0
/**
 *  Toast背景颜色
 */
private let ToastBackgroundColor = UIColor(red:0.2,green:0.2,blue:0.2,alpha:0.75)


extension XHToast
{
    //MARK:-中间显示
    
    /**
     中间显示
     
     - parameter text: 文字
     */
    class func showCenterWithText(text: String) {
        XHToast.showCenterWithText(text, duration:ToastDispalyDuration)
    }
    
    /**
     中间显示+自定义时间
     
     - parameter text:     文字
     - parameter duration: 自定义停留时间
     */
    class func showCenterWithText(text:String, duration:CGFloat) {
        let toast = XHToast(text: text)
        toast.duration = duration
        toast.show()
    }
    
    // MARK:-上方显示
    
    /**
     上方显示
     
     - parameter text: 文字
     */
    class func showTopWithText(text:String) {
        XHToast.showTopWithText(text, topOffset:ToastSpace, duration:ToastDispalyDuration)
    }
    
    /**
     上方显示+自定义停留时间
     
     - parameter text:     文字
     - parameter duration: 自定义停留时间
     */
    class func showTopWithText(text:String, duration:CGFloat) {
        XHToast.showTopWithText(text, topOffset:ToastSpace, duration:duration)
    }
    
    /**
     上方显示+自定义到顶部距离
     
     - parameter text:      文字
     - parameter topOffset: 自定义到顶部距离
     */
    class func showTopWithText(text:String,topOffset:CGFloat) {
        XHToast.showTopWithText(text, topOffset:topOffset, duration:ToastDispalyDuration)
    }
    
    /**
     上方显示+自定义到顶部距离+自定义停留时间
     
     - parameter text:      文字
     - parameter topOffset: 自定义到顶部距离
     - parameter duration:  自定义停留时间
     */
    class func showTopWithText(text:String, topOffset:CGFloat,duration:CGFloat) {
        let toast = XHToast(text: text)
        toast.duration = duration
        toast.showFromTopOffset(topOffset)
    }
    
    // MARK:-下方显示
    
    /**
     下方显示
     
     - parameter text: 文字
     */
    class func showBottomWithText(text:String) {
        XHToast.showBottomWithText(text, bottomOffset:ToastSpace, duration:ToastDispalyDuration)
    }
    
    /**
     下方显示+自定义停留时间
     
     - parameter text:     文字
     - parameter duration: 自定义停留时间
     */
    class func showBottomWithText(text:String,duration:CGFloat) {
        XHToast.showBottomWithText(text, bottomOffset:ToastSpace, duration:duration)
    }
    
    /**
     下方显示+自定义到底部距离
     
     - parameter text:         文字
     - parameter bottomOffset: 自定义到底部距离
     */
    class func showBottomWithText(text:String,bottomOffset:CGFloat) {
        XHToast.showBottomWithText(text, bottomOffset:bottomOffset, duration:ToastDispalyDuration)
    }
    
    /**
     下方显示+自定义到底部距离+自定义停留时间
     
     - parameter text:         文字
     - parameter bottomOffset: 自定义到底部距离
     - parameter duration:     自定义停留时间
     */
    class func showBottomWithText(text:String,bottomOffset:CGFloat,duration:CGFloat) {
        let toast: XHToast = XHToast(text: text)
        toast.duration = duration
        toast.showFromBottomOffset(bottomOffset)
    }
    
}

class XHToast:NSObject {
    
    var contentView: UIButton
    var duration:CGFloat
    
    deinit
    {
        NSNotificationCenter.defaultCenter().removeObserver(self, name: UIDeviceOrientationDidChangeNotification, object: UIDevice.currentDevice())
    }
    
    init(text: String) {
        
        duration = ToastDispalyDuration
        
        let font = UIFont.boldSystemFontOfSize(16)
        let attributes = [NSFontAttributeName: font]
        let rect = text.boundingRectWithSize(CGSizeMake(250,CGFloat.max), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes:attributes, context: nil)
        let textLabel: UILabel = UILabel(frame: CGRectMake(0, 0, rect.size.width+40, rect.size.height+20))
        textLabel.backgroundColor = UIColor.clearColor()
        textLabel.textColor = UIColor.whiteColor()
        textLabel.textAlignment = NSTextAlignment.Center
        textLabel.font = font
        textLabel.text = text
        textLabel.numberOfLines = 0
        contentView = UIButton(frame: CGRectMake(0, 0, textLabel.frame.size.width, textLabel.frame.size.height))
        contentView.layer.cornerRadius = 20.0
        contentView.backgroundColor = ToastBackgroundColor
        contentView.addSubview(textLabel)
        contentView.autoresizingMask = UIViewAutoresizing.FlexibleWidth
        
        super.init()
        
        contentView.addTarget(self, action:#selector(toastTaped(_:)), forControlEvents: UIControlEvents.TouchDown)
        contentView.alpha = 0.0
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector:#selector(deviceOrientationDidChanged(_:)), name: UIDeviceOrientationDidChangeNotification, object: UIDevice.currentDevice())
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func deviceOrientationDidChanged(notify: NSNotification) {
        self.hideAnimation()
    }
    
    
    private func dismissToast() {
        contentView.removeFromSuperview()
    }
    
    @objc private func toastTaped(sender: UIButton) {
        
        self.hideAnimation()
    }
    
    private func showAnimation() {
        
        UIView.animateWithDuration(0.3, delay: 0, options: UIViewAnimationOptions.CurveEaseIn, animations: {
            
            self.contentView.alpha = 1.0
            
        }) { (completion) in
            
            
        }
    }
    
    private  func hideAnimation() {
        
        UIView.animateWithDuration(0.3, delay: 0, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            
            self.contentView.alpha = 0.0
            
        }) { (completion) in
            
            
        }
        
    }
    
    private func show() {
        let window = UIApplication.sharedApplication().windows.last!
        contentView.center = window.center
        window.addSubview(contentView)
        self.showAnimation()
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(UInt64(duration) * NSEC_PER_SEC)),dispatch_get_main_queue()) {
            
            self.hideAnimation()
            
        }
    }
    
    private func showFromTopOffset(top: CGFloat) {
        let window = UIApplication.sharedApplication().windows.last!
        contentView.center = CGPointMake(window.center.x, top+contentView.frame.size.height/2)
        window.addSubview(contentView)
        self.showAnimation()
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(UInt64(duration) * NSEC_PER_SEC)),dispatch_get_main_queue()) {
            
            self.hideAnimation()
        }
    }
    
    private func showFromBottomOffset(bottom: CGFloat) {
        let window = UIApplication.sharedApplication().windows.last!
        contentView.center = CGPointMake(window.center.x, window.frame.size.height-(bottom+contentView.frame.size.height/2))
        window.addSubview(contentView)
        self.showAnimation()
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(UInt64(duration) * NSEC_PER_SEC)),dispatch_get_main_queue()) {
            
            self.hideAnimation()
        }
    }
    
}

