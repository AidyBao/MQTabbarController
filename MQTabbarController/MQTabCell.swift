//
//  MQTabCell.swift
//  MQTabbarController
//
//  Created by 120v on 2018/7/30.
//  Copyright © 2018年 MQ. All rights reserved.
//

import UIKit

class MQTabCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.backgroundColor = UIColor(red: CGFloat(arc4random() % 255) / 255.0, green: CGFloat(arc4random() % 255) / 255.0, blue: CGFloat(arc4random() % 255) / 255.0, alpha: 1.0)
    }
}
