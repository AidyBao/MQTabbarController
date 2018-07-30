//
//  MQTabbarViewController.swift
//  MQTabbarController
//
//  Created by 120v on 2018/7/30.
//  Copyright © 2018年 MQ. All rights reserved.
//

import UIKit

class MQTabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        self.tabBar.isHidden = true
        self.viewControllers = [Root1VC(),Root2VC(),Root3VC(), Root4VC()]
    }
}

