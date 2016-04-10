//
//  BaseCollectionViewController.swift
//  UseXibCollectionViewControllerWiki
//
//  Created by 矢野史洋 on 2016/04/06.
//  Copyright © 2016年 矢野史洋. All rights reserved.
//

import UIKit

let reuseIdentifier = "BaseCollectionViewCell"

class BaseCollectionViewController: UICollectionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView!.registerNib(UINib(nibName: "BaseCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: reuseIdentifier)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        //#warning Incomplete method implementation -- Return the number of sections
        return 1
    }
    
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //#warning Incomplete method implementation -- Return the number of items in the section
        return 100
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell : BaseCollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! BaseCollectionViewCell
        
        // Configure the cell
        cell.sampleLabel?.text = "テスト"
        let cellmainImage = UIImage(named: "sample.jpg")
        cell.cellmainImageView.image = cellmainImage
        cell.backgroundColor = UIColor.whiteColor()
        return cell
    }
}

