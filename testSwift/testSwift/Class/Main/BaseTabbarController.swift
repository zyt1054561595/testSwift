//
//  BaseTabbarController.swift
//  testSwift
//
//  Created by zyt on 2019/10/10.
//  Copyright © 2019 zyt. All rights reserved.
//

import UIKit

class BaseTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        initTabar()
    }
    
    func initTabar() {
        tabBar.barTintColor = UIColor.white //kBartintColor
        
        let itemtitleArr = [
            "首页",
            "话题",
            "生活",
            "个人中心"]
        
        let icon_normal:Array = [
            "shouye",
            "pubuliu",
            "gouwuche" ,
            "wode" ]
        let icon_selected = [
            "shouye_dianji",
            "pubuliu_dianji",
            "gouwuche_dianji" ,
            "wode_dianji" ]
        
        let vcname = [
            "HomeViewController",
            "HomeViewController",
            "BaseViewController",
            "HomeViewController"]
        
        var viewControllerArr:Array = [UIViewController]()
        for i in 0..<vcname.count {
            let appname = Bundle.main.infoDictionary!["CFBundleExecutable"] as! String
            let cls  =  NSClassFromString(appname + "." + vcname[i]) as! BaseViewController.Type
            var vc:UIViewController!
            
            if i < vcname.count {
                vc = cls.init()
            }else{
            }
            
            let barItem = UITabBarItem (title: itemtitleArr[i], image: UIImage (named: icon_normal[i])?.withRenderingMode(.alwaysOriginal), selectedImage: UIImage (named: icon_selected[i])?.withRenderingMode(.alwaysOriginal))
            barItem.tag = i

            
            barItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.red], for: .selected)
            vc.tabBarItem = barItem
            vc.title = itemtitleArr[i]
            
            let navigationvc = BaseNavigationController(rootViewController:vc)
            viewControllerArr.append(navigationvc)
        }
        
        
        viewControllers = viewControllerArr
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
