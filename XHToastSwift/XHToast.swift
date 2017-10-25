//
//  XHToast.swift
//  XHToastSwiftExample
//
//  Created by xiaohui on 16/8/12.
//  Copyright © 2016年 CoderZhuXH. All rights reserved.
//  代码地址:https://github.com/CoderZhuXH/XHToastSwift


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

//在window上显示
extension XHToast
{
    //MARK:-中间显示
    
    /**
     中间显示
     
     - parameter text: 文字
     */
    public class func showCenterWithText(_ text: String) {
        
        XHToast.showCenterWithText(text, duration:ToastDispalyDuration)
    }
    
    /**
     中间显示+自定义时间
     
     - parameter text:     文字
     - parameter duration: 自定义停留时间
     */
    public class func showCenterWithText(_ text:String,duration:CGFloat) {
        let toast = XHToast(text: text)
        toast.duration = duration
        toast.showIn(UIWindow.window())
    }

    // MARK:-上方显示
    
    /**
     上方显示
     
     - parameter text: 文字
     */
    public class func showTopWithText(_ text:String) {
        XHToast.showTopWithText(text, topOffset:ToastSpace, duration:ToastDispalyDuration)
    }
    
    /**
     上方显示+自定义停留时间
     
     - parameter text:     文字
     - parameter duration: 自定义停留时间
     */
    public class func showTopWithText(_ text:String, duration:CGFloat) {
        XHToast.showTopWithText(text, topOffset:ToastSpace, duration:duration)
    }
    
    /**
     上方显示+自定义到顶部距离
     
     - parameter text:      文字
     - parameter topOffset: 自定义到顶部距离
     */
    public class func showTopWithText(_ text:String,topOffset:CGFloat) {
        XHToast.showTopWithText(text, topOffset:topOffset, duration:ToastDispalyDuration)
    }
    
    /**
     上方显示+自定义到顶部距离+自定义停留时间
     
     - parameter text:      文字
     - parameter topOffset: 自定义到顶部距离
     - parameter duration:  自定义停留时间
     */
    public class func showTopWithText(_ text:String, topOffset:CGFloat,duration:CGFloat) {
        let toast = XHToast(text: text)
        toast.duration = duration
        toast.showIn(UIWindow.window(), topOffset: topOffset)
    }
    
    // MARK:-下方显示
    
    /**
     下方显示
     
     - parameter text: 文字
     */
    public class func showBottomWithText(_ text:String) {
        XHToast.showBottomWithText(text, bottomOffset:ToastSpace, duration:ToastDispalyDuration)
    }
    
    /**
     下方显示+自定义停留时间
     
     - parameter text:     文字
     - parameter duration: 自定义停留时间
     */
    public class func showBottomWithText(_ text:String,duration:CGFloat) {
        XHToast.showBottomWithText(text, bottomOffset:ToastSpace, duration:duration)
    }
    
    /**
     下方显示+自定义到底部距离
     
     - parameter text:         文字
     - parameter bottomOffset: 自定义到底部距离
     */
    public class func showBottomWithText(_ text:String,bottomOffset:CGFloat) {
        XHToast.showBottomWithText(text, bottomOffset:bottomOffset, duration:ToastDispalyDuration)
    }
    
    /**
     下方显示+自定义到底部距离+自定义停留时间
     
     - parameter text:         文字
     - parameter bottomOffset: 自定义到底部距离
     - parameter duration:     自定义停留时间
     */
    public class func showBottomWithText(_ text:String,bottomOffset:CGFloat,duration:CGFloat) {
        let toast: XHToast = XHToast(text: text)
        toast.duration = duration
        toast.showIn(UIWindow.window(), bottomOffset: bottomOffset)
    }
    
}

//在view上显示
extension UIView
{
    // MARK:- 中间显示
    
    /// 中间显示
    ///
    /// - Parameter text: 文字
    public func showXHToastCenterWithText(_ text:String){
        
        self.showXHToastCenterWithText(text, duration: ToastDispalyDuration)
    
    }
    
    
    /// 中间显示+自定义停留时间
    ///
    /// - Parameters:
    ///   - text: 文字
    ///   - duration: 自定义停留时间
    public func showXHToastCenterWithText(_ text:String , duration:CGFloat){
    
        let toast: XHToast = XHToast(text: text)
        toast.duration = duration
        toast.showIn(self)
    
    }
    
    
    // MARK:-上方显示
    
    /// 上方显示
    ///
    /// - Parameter text: 文字
    public func showXHToastTopWithText(_ text:String){
    
       self.showXHToastTopWithText(text, topOffset: ToastSpace, duration: ToastDispalyDuration)
    }
    
    
    /// 上方显示+自定义停留时间
    ///
    /// - Parameters:
    ///   - text: 文字
    ///   - duration: 自定义停留时间
    public func showXHToastTopWithText(_ text:String,  duration:CGFloat){
    
      self.showXHToastTopWithText(text, topOffset: ToastSpace, duration: duration)
    
    }
    
    
    /// 上方显示+自定义到顶部距离
    ///
    /// - Parameters:
    ///   - text: 文字
    ///   - topOffset: 自定义到顶部距离
    public func showXHToastTopWithText(_ text:String,topOffset:CGFloat){
    
        self.showXHToastTopWithText(text, topOffset: topOffset, duration: ToastDispalyDuration)
    
    }
    
    
    /// 上方显示+自定义到顶部距离+自定义停留时间
    ///
    /// - Parameters:
    ///   - text: 文字
    ///   - topOffset: 自定义到顶部距离
    ///   - duration: 自定义停留时间
    public  func showXHToastTopWithText(_ text:String,topOffset:CGFloat,duration:CGFloat) {
        
        let toast: XHToast = XHToast(text: text)
        toast.duration = duration
        toast.showIn(self, topOffset: topOffset)
        
    }
    

    //MARK:-下方显示
    
    /// 下方显示
    ///
    /// - Parameter text: 文字
    public func showXHToastBottomWithText(_ text:String){
        self.showXHToastBottomWithText(text, bottomOffset: ToastSpace, duration: ToastDispalyDuration)
    }
    
    
    /// 下方显示+自定义停留时间
    ///
    /// - Parameters:
    ///   - text: 文字
    ///   - duration: 自定义停留时间
    public func showXHToastBottomWithText(_ text:String,  duration:CGFloat){
        
         self.showXHToastBottomWithText(text, bottomOffset: ToastSpace, duration: duration)
        
    }
    
    
    /// 下方显示+自定义到顶部距离
    ///
    /// - Parameters:
    ///   - text: 文字
    ///   - topOffset: 自定义到顶部距离
    public func showXHToastBottomWithText(_ text:String,bottomOffset:CGFloat){
        
        self.showXHToastBottomWithText(text, bottomOffset: bottomOffset, duration: ToastDispalyDuration)
        
    }
    
    /// 下方显示+自定义到顶部距离+自定义停留时间
    ///
    /// - Parameters:
    ///   - text: 文字
    ///   - topOffset: 自定义到顶部距离
    ///   - duration: 自定义停留时间
    public  func showXHToastBottomWithText(_ text:String,bottomOffset:CGFloat,duration:CGFloat) {
        
        let toast: XHToast = XHToast(text: text)
        toast.duration = duration
        toast.showIn(self, bottomOffset: bottomOffset)
    }

}

extension UIWindow
{
    fileprivate class func window() -> UIWindow{
        let window = UIApplication.shared.windows.last!
        if(!window.isHidden){
            return window;
        }
        return (UIApplication.shared.delegate?.window!)!;
    }
}

open class XHToast:NSObject {
    
    var contentView: UIButton
    var duration:CGFloat
    
    init(text: String) {
        
        duration = ToastDispalyDuration
        
        let font = UIFont.boldSystemFont(ofSize: 16)
        let attributes = [NSFontAttributeName: font]
        let rect = text.boundingRect(with: CGSize(width: 250,height: CGFloat.greatestFiniteMagnitude), options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes:attributes, context: nil)
        let textLabel: UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: rect.size.width+40, height: rect.size.height+20))
        textLabel.backgroundColor = UIColor.clear
        textLabel.textColor = UIColor.white
        textLabel.textAlignment = NSTextAlignment.center
        textLabel.font = font
        textLabel.text = text
        textLabel.numberOfLines = 0
        contentView = UIButton(frame: CGRect(x: 0, y: 0, width: textLabel.frame.size.width, height: textLabel.frame.size.height))
        contentView.layer.cornerRadius = 20.0
        contentView.backgroundColor = ToastBackgroundColor
        contentView.addSubview(textLabel)
        contentView.autoresizingMask = UIViewAutoresizing.flexibleWidth
        
        super.init()
        
        contentView.addTarget(self, action:#selector(toastTaped(_:)), for: UIControlEvents.touchDown)
        contentView.alpha = 0.0
        
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func dismissToast() {
        contentView.removeFromSuperview()
    }
    
    @objc fileprivate func toastTaped(_ sender: UIButton) {
        
        self.hideAnimation()
    }
    
    fileprivate func showAnimation() {
        
        UIView.animate(withDuration: 0.3, delay: 0, options: UIViewAnimationOptions.curveEaseIn, animations: {
            
            self.contentView.alpha = 1.0
            
        }) { (completion) in
            
            
        }
    }
    
    fileprivate  func hideAnimation() {
        
        UIView.animate(withDuration: 0.3, delay: 0, options: UIViewAnimationOptions.curveEaseOut, animations: {
            
            self.contentView.alpha = 0.0
            
        }) { (completion) in
            
            
        }
        
    }
    
    fileprivate func showIn(_ view:UIView) {

        contentView.center = view.center
        view.addSubview(contentView)
        self.showAnimation()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + Double(Int64(UInt64(duration) * NSEC_PER_SEC)) / Double(NSEC_PER_SEC)) {
            
            self.hideAnimation()
            
        }
    }
    
    fileprivate func showIn(_ view:UIView,topOffset top: CGFloat) {
        
        contentView.center = CGPoint(x: view.center.x, y: top+contentView.frame.size.height/2)
        view.addSubview(contentView)
        self.showAnimation()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + Double(Int64(UInt64(duration) * NSEC_PER_SEC)) / Double(NSEC_PER_SEC)) {
            
            self.hideAnimation()
        }
    }
    
    fileprivate func showIn(_ view:UIView,bottomOffset bottom: CGFloat) {
        
        contentView.center = CGPoint(x: view.center.x, y: view.frame.size.height-(bottom+contentView.frame.size.height/2))
        view.addSubview(contentView)
        self.showAnimation()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + Double(Int64(UInt64(duration) * NSEC_PER_SEC)) / Double(NSEC_PER_SEC)) {
            
            self.hideAnimation()
        }
    }
    
}

