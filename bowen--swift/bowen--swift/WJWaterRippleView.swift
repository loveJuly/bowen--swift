//
//  WJWaterRippleView.swift
//  bowen--swift
//
//  Created by July on 16/8/27.
//  Copyright © 2016年 July. All rights reserved.
//

import UIKit

class WJWaterRippleView: UIView {
    
    override func drawRect(rect: CGRect) {
        // 半径
        let radius:CGFloat = 50
        // 起始角
        let startAngle:CGFloat = 0
        // 圆心
        let center = CGPointMake(100, 100)
        // 结束角
        let endAngle:CGFloat = 2 * CGFloat(M_PI)
        
        /*
         center: 弧线中心点的坐标
         radius: 弧线所在圆的半径
         startAngle: 弧线开始的角度值
         endAngle: 弧线结束的角度值
         clockwise: 是否顺时针画弧线
         */
        let path = UIBezierPath(arcCenter: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: true)
        
        let layer = CAShapeLayer()
        layer.path = path.CGPath
        layer.strokeColor = UIColor.blueColor().CGColor
        layer.fillColor = UIColor.clearColor().CGColor
        
        self.layer.addSublayer(layer)
    }
}
