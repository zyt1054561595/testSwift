//
//  HomeViewController.swift
//  testSwift
//
//  Created by zyt on 2019/10/10.
//  Copyright © 2019 zyt. All rights reserved.
//

import UIKit
import SnapKit
class HomeViewController: BaseViewController {

//    懒加载
//     var pageTitleView = PageTitleView()
//    var pageTitleView = PageTitleView.init(frame: CGRect.zero, titles: <#T##[String]#>)
    
    
    private lazy var pageTitleView : PageTitleView = {
        let titleFrame = CGRect(x: 0, y: 0, width: kCurrentScreenWidth, height: 44)
        let titles = ["首页","第二页","第二页","第二页","第二页","第二页","v第二页","第二页","首页","第二页","第二页","第二页","第二页","第二页","v第二页","第二页"]
        let titleView = PageTitleView(frame: titleFrame, titles: titles)
        titleView.backgroundColor = UIColor.yellow
        return titleView;
    }()
    //系统函数
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.red
        
//        pageTitleView.titles = ["1", "2", "3"]
setUI()
    }
    
}

extension HomeViewController{
    
    private func setUI(){
        //不需要调整scrollview的内边距
        automaticallyAdjustsScrollViewInsets = false
        setNavigateUI()
        self.view.addSubview(pageTitleView)
        pageTitleView.backgroundColor = UIColor.yellow
        pageTitleView.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(0)
            make.width.equalTo(kCurrentScreenWidth)
            make.height.equalTo(44)
            
        }
    }
    
    private func setNavigateUI(){
//        let but = UIButton()
//        but.setImage(UIImage(named: "shouye"), for: .normal)
//        but.sizeToFit()
//        but.addTarget(self, action: #selector(jumpTo), for: .touchUpInside)
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "shouye")
        let  size = CGSize(width: 40, height: 40)
//        let codeBut = UIBarButtonItem.createItem(imageName: "gouwuche", highImageName: "", size: size)
//        let searchBut = UIBarButtonItem.createItem(imageName: "wode", highImageName: "", size: size)
//        let messageBut = UIBarButtonItem.createItem(imageName: "pubuliu", highImageName: "", size: size)
        let codeBut = UIBarButtonItem(imageName: "gouwuche", highImageName: "", size: size)
        let searchBut = UIBarButtonItem(imageName: "wode", highImageName: "", size: size)
        let messageBut = UIBarButtonItem(imageName: "pubuliu", highImageName: "", size: size)
        navigationItem.rightBarButtonItems = [codeBut , searchBut , messageBut]
        
    }
    
    private func start(){}
    
    
    private func jumpTo(){
        
    }
}
