//
//  ViewController.swift
//  bowen--swift
//
//  Created by July on 16/8/27.
//  Copyright © 2016年 July. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer:NSTimer!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 先在控制器上初始化一个圆，使用者可以注释这段代码，不过效果没那么好
        let waterRippleView = WJWaterRippleView(frame: CGRectMake(100, 100, 200, 200))
        waterRippleView.backgroundColor = UIColor.clearColor()
        self.view.addSubview(waterRippleView)
    }

    @IBAction func startBtnAction(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(0.6, target: self, selector: #selector(ViewController.waterRippleAnimation), userInfo: nil, repeats: true)
    }
    
    @IBAction func stopBtnAction(sender: AnyObject) {
        timer.invalidate()
    }

    func waterRippleAnimation(){
        let waterRippleView = WJWaterRippleView(frame: CGRectMake(100, 100, 200, 200))
        waterRippleView.backgroundColor = UIColor.clearColor()
        self.view.addSubview(waterRippleView)
        
        UIView.animateWithDuration(2, animations: {
            
            /*
             t:要变换的矩阵
             sx:缩放倍数--横向
             sy:缩放倍数--竖向
             */
            // 这里就是把圆进行两倍放大
            waterRippleView.transform = CGAffineTransformScale(waterRippleView.transform, 2, 2)
            waterRippleView.alpha = 0
            }) { (true) in
                waterRippleView.removeFromSuperview()
        }
    }

}

