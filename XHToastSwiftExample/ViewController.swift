//
//  ViewController.swift
//  XHToastSwiftExample
//
//  Created by xiaohui on 16/8/12.
//  Copyright © 2016年 CoderZhuXH. All rights reserved.
//  代码地址:https://github.com/CoderZhuXH/XHToastSwift

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
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let array = dataArray[section]
        return array.count
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 44.0
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 10
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        
        return 0.01
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellID = "cell"
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        if cell == nil
        {
            cell = UITableViewCell(style:.default ,reuseIdentifier: cellID)
        }
        cell?.textLabel?.text = dataArray[(indexPath as NSIndexPath).section][(indexPath as NSIndexPath).row]
        cell?.textLabel?.numberOfLines = 0
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: false)
        
        //在window上显示
        self.showInWindow(indexPath: indexPath)
        
        //在view上显示
        //self.showInView(indexPath: indexPath)
        
    }
    
    
    //在window上显示
    func showInWindow(indexPath: IndexPath) {
        

        let text = dataArray[(indexPath as NSIndexPath).section][(indexPath as NSIndexPath).row]
        
        //MARK: - 中间
        if (indexPath as NSIndexPath).section == 0
        {
            if (indexPath as NSIndexPath).row == 0
            {
                /**
                 * 中间显示
                 */
                XHToast.showCenterWithText(text)

            }
            else if (indexPath as NSIndexPath).row == 1
            {
                /**
                 *  中间显示+自定义停留时间
                 */
                XHToast.showCenterWithText(text, duration:3.0)

            }
        }
            //MARK: - 顶端
        else if (indexPath as NSIndexPath).section == 1
        {
            /**
             *  顶端显示
             */
            if (indexPath as NSIndexPath).row == 0
            {
                XHToast.showTopWithText(text)

            }
            else if (indexPath as NSIndexPath).row == 1
            {
                /**
                 *  顶端显示 + 自定义停留时间
                 */
                XHToast.showTopWithText(text, duration:3.0)

                
            }
            else if (indexPath as NSIndexPath).row == 2
            {
                /**
                 *  顶端显示 + 自定义到顶端距离
                 */
                XHToast.showTopWithText(text, topOffset:150)

            }
            else if (indexPath as NSIndexPath).row == 3
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
            if (indexPath as NSIndexPath).row == 0
            {
                XHToast.showBottomWithText(text)
            }
            else if (indexPath as NSIndexPath).row == 1
            {
                /**
                 *  底端显示 + 自定义停留时间
                 */
                XHToast.showBottomWithText(text, duration:3.0)
                
            }
            else if (indexPath as NSIndexPath).row == 2
            {
                /**
                 *  底端显示 + 自定义到顶端距离
                 */
                XHToast.showBottomWithText(text, bottomOffset:150)
            }
            else if (indexPath as NSIndexPath).row == 3
            {
                /**
                 *  底端显示+自定义到顶端距离+自定义停留时间
                 */
                XHToast.showBottomWithText(text, bottomOffset:150, duration:3.0)
                
            }
        }

    }
    
    //在view上显示
    func showInView(indexPath: IndexPath) {
        
        let text = dataArray[(indexPath as NSIndexPath).section][(indexPath as NSIndexPath).row]
        
        //MARK: - 中间
        if (indexPath as NSIndexPath).section == 0
        {
            if (indexPath as NSIndexPath).row == 0
            {
                /**
                 * 中间显示
                 */

                self.view.showXHToastCenterWithText(text)
                
                
            }
            else if (indexPath as NSIndexPath).row == 1
            {
                /**
                 *  中间显示+自定义停留时间
                 */
                self.view.showXHToastCenterWithText(text, duration: 3.0)
                
            }
        }
            //MARK: - 顶端
        else if (indexPath as NSIndexPath).section == 1
        {

            if (indexPath as NSIndexPath).row == 0
            {
                /**
                 *  顶端显示
                 */
                self.view.showXHToastTopWithText(text)
            }
            else if (indexPath as NSIndexPath).row == 1
            {
                /**
                 *  顶端显示 + 自定义停留时间
                 */
                self.view.showXHToastTopWithText(text, duration: 3.0)
                
            }
            else if (indexPath as NSIndexPath).row == 2
            {
                /**
                 *  顶端显示 + 自定义到顶端距离
                 */
                self.view.showXHToastTopWithText(text, topOffset: 150)
            }
            else if (indexPath as NSIndexPath).row == 3
            {
                /**
                 *  顶端显示+自定义到顶端距离+自定义停留时间
                 */
                self.view.showXHToastTopWithText(text, topOffset: 150, duration: 3.0)
                
            }
        }
            //MARK: - 底部
        else
        {
            if (indexPath as NSIndexPath).row == 0
            {
                /**
                 *  底端显示
                 */
                self.view.showXHToastBottomWithText(text)
            }
            else if (indexPath as NSIndexPath).row == 1
            {
                /**
                 *  底端显示 + 自定义停留时间
                 */
                self.view.showXHToastBottomWithText(text, duration:3.0)
                
            }
            else if (indexPath as NSIndexPath).row == 2
            {
                /**
                 *  底端显示 + 自定义到顶端距离
                 */
                self.view.showXHToastBottomWithText(text, bottomOffset: 150)
            }
            else if (indexPath as NSIndexPath).row == 3
            {
                /**
                 *  底端显示+自定义到顶端距离+自定义停留时间
                 */
                self.view.showXHToastBottomWithText(text, bottomOffset: 150, duration: 3.0)
            }
        }

    }
}
