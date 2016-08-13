//
//  ViewController.swift
//  XHToastSwiftExample
//
//  Created by xiaohui on 16/8/12.
//  Copyright © 2016年 qiantou. All rights reserved.
//  代码地址:https://github.com/CoderZhuXH/XHToast-Swift

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var myTableView: UITableView!
    
    let dataArray =  [["中间显示","中间显示+自定义停留时间"],
                      ["顶端显示","顶端显示+自定义停留时间","顶端显示+自定义距顶端距离","顶端显示+自定义距顶端距离+自定义停留时间"],
                      ["底部显示","底部显示+自定义停留时间","底部显示+自定义距底部距离","底部显示+自定义距底部距离+自定义停留时间"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "XHToastSwiftExample"
        
    }
}
//MARK: - tableView
extension ViewController:UITableViewDelegate,UITableViewDataSource
{
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return dataArray.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let array = dataArray[section]
        return array.count
        
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        return 44.0
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 10
    }
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        
        return 0.01
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellID = "cell"
        var cell = tableView.dequeueReusableCellWithIdentifier(cellID)
        if cell == nil
        {
            cell = UITableViewCell(style:.Default ,reuseIdentifier: cellID)
        }
        cell?.textLabel?.text = dataArray[indexPath.section][indexPath.row]
        cell?.textLabel?.numberOfLines = 0
        return cell!
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        
        let text = dataArray[indexPath.section][indexPath.row]
        //MARK: - 中间
        if indexPath.section == 0
        {
            if indexPath.row == 0
            {
                /**
                 * 中间显示
                 */
                XHToast.showCenterWithText(text)
            }
            else if indexPath.row == 1
            {
                /**
                 *  中间显示+自定义停留时间
                 */
                XHToast.showCenterWithText(text, duration:3.0)
            }
        }
        //MARK: - 顶端
        else if indexPath.section == 1
        {
            /**
             *  顶端显示
             */
            if indexPath.row == 0
            {
                XHToast.showTopWithText(text)
            }
            else if indexPath.row == 1
            {
                /**
                 *  顶端显示 + 自定义停留时间
                 */
                XHToast.showTopWithText(text, duration:3.0)
                
            }
            else if indexPath.row == 2
            {
                /**
                 *  顶端显示 + 自定义到顶端距离
                 */
                XHToast.showTopWithText(text, topOffset:150)
            }
            else if indexPath.row == 3
            {
                /**
                 *  顶端显示+自定义到顶端距离+自定义停留时间
                 */
                XHToast.showTopWithText(text, topOffset:150, duration:3.0)
                
            }
        }
        //MARK: - 底部
        else
        {
            /**
             *  底端显示
             */
            if indexPath.row == 0
            {
                XHToast.showBottomWithText(text)
            }
            else if indexPath.row == 1
            {
                /**
                 *  底端显示 + 自定义停留时间
                 */
                XHToast.showBottomWithText(text, duration:3.0)
                
            }
            else if indexPath.row == 2
            {
                /**
                 *  底端显示 + 自定义到顶端距离
                 */
                XHToast.showBottomWithText(text, bottomOffset:150)
            }
            else if indexPath.row == 3
            {
                /**
                 *  底端显示+自定义到顶端距离+自定义停留时间
                 */
                XHToast.showBottomWithText(text, bottomOffset:150, duration:3.0)
                
            }
        }
    }
}
