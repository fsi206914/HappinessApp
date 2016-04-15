//
//  FaceView.swift
//  Happiness
//
//  Created by Liang Tang on 4/14/16.
//  Copyright © 2016 Tinker. All rights reserved.
//

import UIKit

class FaceView: UIView {

    var lineWidth: CGFloat = 3{
        didSet{setNeedsLayout()}
    }
    
    var faceCenter: CGPoint{
        return convertPoint(center, toView: superview);
    }
    
    var faceRadius: CGFloat{
        return min(bounds.size.width, bounds.size.height)/2;
    }
    
    override func drawRect(rect: CGRect) {
        let facePath = UIBezierPath(arcCenter: faceCenter, radius: faceRadius, startAngle: 0, endAngle: CGFloat(2*M_PI), clockwise: true);
        facePath.lineWidth = lineWidth;
        color.set();
    }
    
}
