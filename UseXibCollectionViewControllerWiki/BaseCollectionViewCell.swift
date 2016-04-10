//
//  BaseCollectionViewCell.swift
//  UseXibCollectionViewControllerWiki
//
//  Created by 矢野史洋 on 2016/04/06.
//  Copyright © 2016年 矢野史洋. All rights reserved.
//

import UIKit

class BaseCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var cellmainImageView: UIImageView!
    
    @IBOutlet weak var sampleLabel: UILabel!
    var textLabel : UILabel?
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}

