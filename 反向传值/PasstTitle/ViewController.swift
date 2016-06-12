//
//  ViewController.swift
//  PasstTitle
//
//  Created by xuech on 16/6/12.
//  Copyright © 2016年 obizsoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showlable: UILabel!
    
    @IBOutlet weak var passWordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    //MARK:-闭包传值
    func myClosure(passStr: String) -> Void {
        showlable.text = passStr
    }


    @IBAction func goSecVC(sender: AnyObject) {
        let secondVC = self.storyboard?.instantiateViewControllerWithIdentifier("SecViewController") as! SecViewController
        secondVC.testClouse = myClosure
        navigationController?.pushViewController(secondVC, animated: true)

    }
    //MARK:-代理传值
    @IBAction func delegateValue(sender: AnyObject) {
        let thirdVC = self.storyboard?.instantiateViewControllerWithIdentifier("ThirdViewController") as! ThirdViewController
        thirdVC.delegate = self
        navigationController?.pushViewController(thirdVC, animated: true)
    }

}

extension ViewController:SendMessageDelegate
{
    func sendMessage(message:String){
        passWordLabel.text = message
    }
}

