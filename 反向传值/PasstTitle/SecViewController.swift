//
//  SecViewController.swift
//  PasstTitle
//
//  Created by xuech on 16/6/12.
//  Copyright © 2016年 obizsoft. All rights reserved.
//

import UIKit

// 定义闭包
typealias sendValueClouse = (str:String)->Void

class SecViewController: UIViewController {

    @IBOutlet weak var userTextField: UITextField!
    // 声明闭包
    var testClouse = sendValueClouse?()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    @IBAction func clickEvent(sender: AnyObject) {
        //判断闭包是否存在
        if testClouse != nil {
            self.testClouse!(str:self.userTextField.text!)
        }
        navigationController?.popViewControllerAnimated(true)
    }
    
    



}
