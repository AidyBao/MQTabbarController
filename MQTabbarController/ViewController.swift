//
//  ViewController.swift
//  MQTabbarController
//
//  Created by 120v on 2018/7/30.
//  Copyright © 2018年 MQ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func jumpAction(_ sender: UIButton) {
        MQTabbarRootVC.show(at: self)
    }
}

