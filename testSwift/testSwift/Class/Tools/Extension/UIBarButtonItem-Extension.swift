//
//  UIBarButtonItem-Extension.swift
//  testSwift
//
//  Created by zyt on 2019/10/10.
//  Copyright © 2019 zyt. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
   //类方法
    class func createItem(imageName:String , highImageName:String ,size : CGSize) -> UIBarButtonItem{
        let but = UIButton()
        but.frame = CGRect(origin: CGPoint.zero, size: size)
        but.setImage(UIImage(named: imageName), for: .normal)
        but.setImage(UIImage(named: highImageName), for: .highlighted)
        return UIBarButtonItem.init(customView: but)
    }
    
    //构造函数  extension里面扩建构造函数的话，只能扩建便利构造函数 ,便利构造函数条件 1：必须以convenience开头 2.在构造函数中必须明确一个设计的构造函数，并且这个设计的函数是（self）开头的
    convenience init(imageName:String , highImageName:String = "" ,size : CGSize = CGSize.zero) {
        let but = UIButton()
        if size != CGSize.zero {
            but.frame = CGRect(origin: CGPoint.zero, size: size)
        }else{
            but.sizeToFit()
        }
        but.setImage(UIImage(named: imageName), for: .normal)
        if highImageName != "" {
            but.setImage(UIImage(named: highImageName), for: .highlighted)
        }
        self.init(customView :but)
    }
}


