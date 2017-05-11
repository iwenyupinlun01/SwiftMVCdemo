//
//  TextCell.swift
//  SwiftMVCdemo
//
//  Created by 王俊钢 on 2017/5/11.
//  Copyright © 2017年 wangjungang. All rights reserved.
//

import UIKit

class TextCell: UITableViewCell {

    lazy var namelab: UILabel = {
        let lab = UILabel()
        lab.textAlignment = NSTextAlignment.left
        lab.textColor = UIColor.blue
        return lab
    }()
    
    lazy var picimgview: UIImageView = {
        let img = UIImageView()
        img.layer.masksToBounds = true
        img.layer.cornerRadius = 25
        img.backgroundColor = UIColor.gray
        return img
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: ViewController.idenftid)
        self.contentView.addSubview(self.namelab)
        self.contentView.addSubview(self.picimgview)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        self.namelab.frame = CGRect.init(x: 80, y: 15, width: 100, height: 20)
        self.picimgview.frame = CGRect.init(x: 20, y: 15, width: 50, height: 50)
    }
    
}
