//
//  MQTabbarRootVC.swift
//  MQTabbarController
//
//  Created by 120v on 2018/7/30.
//  Copyright © 2018年 MQ. All rights reserved.
//

import UIKit

class MQTabbarRootVC: UIViewController {

    @IBOutlet weak var ccvList: UICollectionView!
    @IBOutlet weak var containerView: UIView!
    
    static func build() -> MQTabbarRootVC {
        let storyBoard = UIStoryboard.init(name: "MQTabbarRootVC", bundle: nil)
        if  let vc = storyBoard.instantiateViewController(withIdentifier: "MQTabbarRootVC") as? MQTabbarRootVC {
            return vc
        }
        return MQTabbarRootVC()
    }
    
    static func show(at vc: UIViewController,selectedIndex: Int = 0) {
        let rootVC = MQTabbarRootVC.build()
        rootVC.selectedIndex = selectedIndex
        vc.navigationController?.pushViewController(rootVC, animated: true)
    }
    
    fileprivate var selectedIndex: Int = 0
    var zx_tab: UITabBarController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ccvList.register(UINib.init(nibName: String(describing: MQTabCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: MQTabCell.self))
        self.ccvList.selectItem(at: IndexPath.init(row: selectedIndex, section: 0), animated: true, scrollPosition: .centeredHorizontally)
        self.zx_tab?.selectedIndex = self.selectedIndex
    }
    
    @IBAction func backAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let tab = segue.destination as? MQTabbarViewController {
            zx_tab = tab
        }
    }
    
}

extension MQTabbarRootVC: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.zx_tab?.selectedIndex = indexPath.row
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: MQTabCell.self), for: indexPath) as! MQTabCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize.init(width: floor((UIScreen.main.bounds.size.width - 46) / 4), height: 54)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
