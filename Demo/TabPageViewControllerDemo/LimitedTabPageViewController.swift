//
//  LimitedTabPageViewController.swift
//  TabPageViewController
//
//  Created by Tomoya Hayakawa on 2017/08/05.
//
//

import UIKit
import TabPageViewController

class LimitedTabPageViewController: TabPageViewController {

    override init() {
        super.init()
        let vc1 = UIViewController()
        vc1.view.backgroundColor = UIColor.white
        
        let vc3 = UIViewController()
        vc3.view.backgroundColor = UIColor.white
        
        let vc4 = UIViewController()
        vc4.view.backgroundColor = UIColor.white
        
        let vc5 = UIViewController()
        vc5.view.backgroundColor = UIColor.white
        
        let vc2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ListViewController")
        tabItems = [(vc1, "推荐"), (vc2, "新闻"), (vc3, "电影"), (vc4, "音乐"), (vc5, "视频")]
        option.tabWidth = (view.frame.width - 50) / CGFloat(tabItems.count)
        option.hidesTopViewOnSwipeType = .all
        option.tabBackgroundColor = UIColor(red:0.16, green:0.16, blue:0.16, alpha:1.00)
        option.currentBarHeight = 0
        option.tabHeight = 64
        option.fontSize = 16
        option.currentColor = UIColor(red:0.35, green:0.78, blue:0.56, alpha:1.00)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
