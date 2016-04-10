//
//  TestCollectionViewController.swift
//  UseXibCollectionViewControllerWiki
//
//  Created by 矢野史洋 on 2016/04/10.
//  Copyright © 2016年 矢野史洋. All rights reserved.
//

import UIKit

class TestCollectionViewController :  BaseCollectionViewController {
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell : BaseCollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! BaseCollectionViewCell
        
        cell.sampleLabel?.text = "テスト"
        let cellmainImage = UIImage(named: "sample.jpg")
        cell.cellmainImageView.image = cellmainImage
        cell.backgroundColor = UIColor.whiteColor()
        return cell
    
    }
}
