//
//  ViewController.swift
//  UseXibCollectionViewControllerWiki
//
//  Created by 矢野史洋 on 2016/04/06.
//  Copyright © 2016年 矢野史洋. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.orangeColor()
        self.title = "View"
        
        let pushCollectionViewButton = UIButton(frame: CGRectMake(0,0,200,50))
        pushCollectionViewButton.backgroundColor = UIColor.orangeColor()
        pushCollectionViewButton.layer.masksToBounds = true
        pushCollectionViewButton.setTitle("Puhs CollectionView", forState: .Normal)
        pushCollectionViewButton.layer.cornerRadius = 20.0
        pushCollectionViewButton.layer.position = CGPoint(x: self.view.bounds.width/2, y:200)
        pushCollectionViewButton.addTarget(self, action: "onClickpushCollectionViewButton:", forControlEvents: .TouchUpInside)
        
        self.view.addSubview(pushCollectionViewButton)
    }
    
    
    internal func onClickpushCollectionViewButton(sender: UIButton){
        let baseCollectionViewController : BaseCollectionViewController = BaseCollectionViewController(nibName: "BaseCollectionViewController", bundle: nil)
        baseCollectionViewController.title = "BaseCollectionView"

//        let testCollectionViewController = TestCollectionViewController()
        self.navigationController?.pushViewController(baseCollectionViewController, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

