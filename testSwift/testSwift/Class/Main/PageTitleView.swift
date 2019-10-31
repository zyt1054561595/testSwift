//
//  PageTitleView.swift
//  testSwift
//
//  Created by zyt on 2019/10/14.
//  Copyright © 2019 zyt. All rights reserved.
//

import UIKit
import SnapKit
class PageTitleView: UIView {

    var titles : [String]
    //定义属性
//     var titles:[String]? {
//        didSet {
//
////            setNavigateUI()
////            setUI()
//        }
//    }
    //懒加载属性
    private lazy var scrollView:UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.showsVerticalScrollIndicator = false
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.scrollsToTop = false
        scrollView.bounces = false
        scrollView.backgroundColor = UIColor.green
        return scrollView
    }()
    
//    lazy var pageV :UIView = {
//        let v = uiv
//
//
//    }
    
    private lazy var pageView:UIView = {
        let pageView = UIView()
        pageView.backgroundColor = UIColor.black
        return pageView
    }()
    
//    override init(frame: CGRect) {
//        super.init(frame:frame)
//        setUI()
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    

     init(frame: CGRect , titles:[String]) {
        self.titles = titles
        super.init(frame: frame)
        setUI()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension PageTitleView {
        private func  setUI(){
//            addSubview(pageView)
//            pageView.frame = CGRect(x: 0, y: 0, width: 100, height: 140)
            addSubview(scrollView)
            scrollView.contentSize = CGSize(width: 2*kCurrentScreenWidth , height: 40)
//            scrollView.frame = bounds
            setTitlePage()
            scrollView.snp.makeConstraints { (make) in
                make.width.equalToSuperview()
                make.left.equalToSuperview()
                make.top.equalToSuperview().offset(0)
                make.height.equalTo(40)
            }
        }
    
    private func setTitlePage (){
        
        let labelY:CGFloat = 0.0
        let labelW:CGFloat = frame.width / CGFloat(titles.count/2)
        let labelH:CGFloat = frame.height - 2.0
        
        for (index , title) in titles.enumerated() {
            let lab = UILabel()
            lab.font = UIFont.systemFont(ofSize: 10)
            lab.text = title+String(index);
            lab.tag = index
            lab.textColor = UIColor.darkGray
            lab.textAlignment = .center
            

            let labeX:CGFloat = labelW * CGFloat(index)
            lab.frame = CGRect(x: labeX, y: labelY, width: labelW, height: labelH)
            
            
            scrollView.addSubview(lab)
        }
    }
    
}
