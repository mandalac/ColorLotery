//
//  UIColor+Ext.swift
//  ColorLotery
//
//  Created by Vasili Mandalac on 2/3/21.
//

import UIKit

extension UIColor {
    
    //Func creating those Colors
    static func random() -> UIColor {
        let randomColor = UIColor(red:   CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue:  CGFloat.random(in: 0...1),
                                  alpha: 1)
        return randomColor
    }
}
