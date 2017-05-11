//
//  ViewController.swift
//  SwiftMVCdemo
//
//  Created by 王俊钢 on 2017/5/11.
//  Copyright © 2017年 wangjungang. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
    
    static let idenftid = "idenftidstr"
    var mainTableview:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "首页"
        
        self.gettable()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func gettable() {
        //self.mainTableview = UITableView(frame: self.view.frame, style: UITableViewStyle.plain)
        self.mainTableview = UITableView()
        let rect = CGRect.init(x: 0, y: 0, width: DEVICEWIDTH, height: DEVICEHEIGHT)
        self.mainTableview.frame = rect
        self.mainTableview.dataSource = self
        self.mainTableview.delegate = self
        self.view.addSubview(self.mainTableview)
    }
    
    // MARK: 懒加载
    lazy var mainarr: NSMutableArray = {
        let temparr = NSMutableArray()
        
        return temparr
        
    }()
    
    // MARK:UITableViewDataSource&&UITableViewDelegate
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 5
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell:TextCell = TextCell(style: UITableViewCellStyle.default, reuseIdentifier: ViewController.idenftid)
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        cell.namelab.text = "测试"
        return cell
    }

    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
    return 150;
    }
    
    
    
    
    // MARK: 实现方法
    
}

