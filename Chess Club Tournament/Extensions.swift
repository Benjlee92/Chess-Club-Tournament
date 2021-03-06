//
//  Extensions.swift
//  Chess Club Tournament
//
//  Created by Ben Lee on 1/30/19.
//  Copyright © 2019 Ben Lee. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func anchor(top: NSLayoutYAxisAnchor?, left: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, right: NSLayoutXAxisAnchor?, paddingTop: CGFloat, paddingLeft: CGFloat, paddingBottom: CGFloat, paddingRight: CGFloat, width: CGFloat, height: CGFloat) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        
        if let right = right {
            self.rightAnchor.constraint(equalTo: right, constant: -1 * paddingRight).isActive = true
        }
        
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: paddingBottom).isActive = true
        }
        
        if width != 0 {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if height != 0 {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
    
    func setShadow() {
        layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.1).cgColor
        layer.shadowOpacity = 1
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 1.5
    }
}



extension UIColor {
    
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor{
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
    
    static func TEXTCOLOR() -> UIColor {
        return UIColor.rgb(red: 49, green: 57, blue: 77)
    }
    
    static func TEXTBLACK() -> UIColor {
        return UIColor.rgb(red: 74, green: 74, blue: 74)
    }
    
    static func BACKGROUNDCOLOR() -> UIColor {
        return UIColor.rgb(red: 246, green: 247, blue: 249)
    }
    
    static func GRAY() -> UIColor {
        return UIColor(red: 245/255, green: 246/255, blue: 250/255, alpha: 1)
    }
    static func BLACKCOLOR() -> UIColor{
        return UIColor.rgb(red: 31, green: 35, blue: 39)
    }
    
    static func BARGRAY() -> UIColor{
        return UIColor(red: 31/255, green: 35/255, blue: 39/255, alpha: 0.1)
    }
    
    static func CHESSLIGHTBLACK() -> UIColor{
        return UIColor.rgb(red: 98, green: 98, blue: 98)
    }
    
    static func CHESSBLACK() -> UIColor{
        return UIColor.rgb(red: 51, green: 51, blue: 51)
    }
    
    static func SHADOWCOLOR202() -> UIColor{
        return UIColor.rgb(red: 202, green: 206, blue: 216)
    }
    
    static func CHESSRED() -> UIColor{
        return UIColor.rgb(red: 255, green: 95, blue: 104)
    }
    
    static func CHESSBLUE() -> UIColor{
        return UIColor.rgb(red: 51, green: 137, blue: 238)
    }
    
    static func CHESSGREEN() -> UIColor{
        return UIColor.rgb(red: 100, green: 195, blue: 40)
    }
    
    static func CHESSORANGE() -> UIColor{
        return UIColor.rgb(red: 252, green: 160, blue: 1)
    }
}

extension UILabel {
    func setBoldFont(fontSize: CGFloat) {
        self.font = UIFont.systemFont(ofSize: fontSize, weight: .bold)
        self.textColor = UIColor.TEXTBLACK()
    }
    
    func setSemiBoldFont(fontSize: CGFloat) {
        self.font = UIFont.systemFont(ofSize: fontSize, weight: .semibold)
        self.textColor = UIColor.TEXTBLACK()
    }
    
    func setMediumFont(fontSize: CGFloat) {
        self.font = UIFont.systemFont(ofSize: fontSize, weight: .medium)
        self.textColor = UIColor.TEXTBLACK()
    }
    
    func setRegularFont(fontSize: CGFloat) {
        self.font = UIFont.systemFont(ofSize: fontSize, weight: .regular)
        self.textColor = UIColor.TEXTBLACK()
    }
    func setLightFont(fontSize: CGFloat) {
        self.font = UIFont.systemFont(ofSize: fontSize, weight: .light)
        self.textColor = UIColor.TEXTBLACK()
    }
}

extension UIImageView {
    func setImage(image: UIImage) {
        
        self.clipsToBounds = true
        self.image = image.withRenderingMode(.alwaysOriginal)
    }
}


