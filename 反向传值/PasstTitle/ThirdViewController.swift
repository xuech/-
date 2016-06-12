//
//  ThirdViewController.swift
//  PasstTitle
//
//  Created by xuech on 16/6/12.
//  Copyright © 2016年 obizsoft. All rights reserved.
//

import UIKit

//代理传值
//1.设置代理方法
protocol SendMessageDelegate {
    func sendMessage(message:String)
}

class ThirdViewController: UIViewController {

    @IBOutlet weak var passWordTextField: UITextField!
    
    //2.申明代理属性
    var delegate = SendMessageDelegate?()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func back(sender: AnyObject) {
        //3.判断代理是否调用
        if delegate != nil {
            delegate?.sendMessage(self.passWordTextField.text!)
            navigationController?.popViewControllerAnimated(true)
        }
    }


}
