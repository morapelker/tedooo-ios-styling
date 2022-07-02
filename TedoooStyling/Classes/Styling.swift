//
//  Styling.swift
//  Baloo
//
//  Created by mor apelker on 20/04/2018.
//  Copyright © 2018 mor apelker. All rights reserved.
//

import UIKit

public class Styling {
    
    public static let lightBlueColor = UIColor.rgb(red: 176, green: 226, blue: 255)
    public static let lightGrayColor = UIColor.rgb(red: 230, green: 230, blue: 230)
    public static let themeColor = UIColor.rgb(red: 60, green: 191, blue: 149)
    public static let sentMessageColor = UIColor.rgb(red: 195, green: 234, blue: 197)
    public static let blueButtonColor = UIColor.rgb(red: 0, green: 128, blue: 255)
    public static let joyBlueColor = UIColor.rgb(red: 0, green: 122, blue: 255)
    
    public static func getThemeColor() -> UIColor {
        return themeColor
    }
    
    public static func getStarColor() -> UIColor {
        return UIColor.rgb(red: 248, green: 150, blue: 11)
    }
    
    public static func getFont(size: CGFloat) -> UIFont? {
        return UIFont.systemFont(ofSize: size)
//        return UIFont(name: "ArialMT", size: size)
    }
    
    public static func getFontBold(size: CGFloat) -> UIFont? {
        return UIFont.boldSystemFont(ofSize: size)
//        return UIFont(name: "Arial-BoldMT", size: size)
    }
    
    public static func getDarkGrayColor() -> UIColor {
        return UIColor.rgb(red: 99, green: 100, blue: 102)
    }
    
    public static func getBackgroundColor() -> UIColor {
        return UIColor.rgb(red: 234, green: 235, blue: 237)
    }
    
    public static func getDefaultTintColor() -> UIColor {
        return UIColor.rgb(red: 4, green: 165, blue: 255)
    }
    
    public static func textFieldBackgroundColor() -> UIColor {
        return UIColor.rgb(red: 209, green: 210, blue: 213)
    }
    
    public static func styleJoyButton(view: UIButton, backgroundColor: UIColor = joyBlueColor, textColor: UIColor = .white) {
        view.backgroundColor = backgroundColor
        view.tintColor = textColor
        view.layer.cornerRadius = 8
    }
    
    public static func styleButton(view: UIView) {
        view.layer.backgroundColor = Styling.getDarkGrayColor().cgColor
        view.layer.cornerRadius = 10
        view.layer.borderWidth = 0
        view.backgroundColor = Styling.getDarkGrayColor()
    }
    
    public static func elevateView(_ view: UIView) {
        view.layer.shadowColor = UIColor.gray.cgColor
        view.layer.shadowOpacity = 0.8
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 3.0
    }
    
    public static func styleSubButton(_ bar: UIView) {
        bar.layer.masksToBounds = false
        bar.layer.shadowOffset = CGSize(width: 0, height: 4)
        bar.layer.shadowRadius = 14
        bar.layer.shadowOpacity = 1
        bar.layer.shadowColor = UIColor.rgb(red: 130, green: 130, blue: 130).withAlphaComponent(0.4).cgColor
        bar.layer.cornerRadius = 10
    }
    
    public static func joyShadow(_ bar: UIView, radius: CGFloat = 14) {
        bar.layer.masksToBounds = false
        bar.layer.shadowOffset = CGSize(width: 0, height: 4)
        bar.layer.shadowRadius = radius
        bar.layer.shadowOpacity = 1
        bar.layer.shadowColor = UIColor.rgb(red: 176, green: 176, blue: 176).withAlphaComponent(0.25).cgColor
        bar.layer.cornerRadius = 8
    }
    
    public static func defaultJoyStyling(
        _ view: UIView,
        cornerRadius: CGFloat = 4,
        shadowOffset: CGSize = .init(width: 0, height: 1),
        shadowRadius: CGFloat = 7,
        shadowOpacity: Float = 1,
        shadowColor: UIColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.05)
    ) {
        view.layer.masksToBounds = false
        view.layer.shadowOffset = shadowOffset
        view.layer.shadowRadius = shadowRadius
        view.layer.shadowOpacity = shadowOpacity
        view.layer.shadowColor = shadowColor.cgColor
        view.layer.cornerRadius = cornerRadius
        view.clipsToBounds = false
    }
    
    public static func styleShadowView(
        _ view: UIView,
        cornerRadius: CGFloat,
        shadowOffset: CGSize,
        shadowRadius: CGFloat,
        shadowOpacity: Float,
        shadowColor: UIColor
    ) {
        view.layer.masksToBounds = false
        view.layer.shadowOffset = shadowOffset
        view.layer.shadowRadius = shadowRadius
        view.layer.shadowOpacity = shadowOpacity
        view.layer.shadowColor = shadowColor.cgColor
        view.layer.cornerRadius = cornerRadius
        view.clipsToBounds = false
    }
    
    public static func styleTabBar(
        _ bar: UIView, cornerRadius: CGFloat = 8,
        shadowOffset: CGFloat = 3,
        shadowRadius: CGFloat = 2,
        shadowOpacity: Float = 0.7,
        shadowColor: UIColor = UIColor.gray
    ) {
        bar.layer.masksToBounds = false
        bar.layer.shadowOffset = CGSize(width: 0, height: shadowOffset)
        bar.layer.shadowRadius = shadowRadius
        bar.layer.shadowOpacity = shadowOpacity
        bar.layer.shadowColor = shadowColor.cgColor
        bar.layer.cornerRadius = cornerRadius
    }
    
    public static func styleTextFieldSearchChat(textField: UITextField) {
        textField.leftView = UIView(frame: CGRect(x: 8, y: 0, width: 28, height: 40))
        getImageMagnify(parent: textField.leftView!)
        textField.leftViewMode = .always
        textField.borderStyle = .none
        textField.layer.cornerRadius = 9.0
        
//        textField.layer.masksToBounds = true
        textField.font = Styling.getFont(size: 17)
    }
    
    public static func styleTextFieldSearch(textField: UITextField?) {
        guard let textField = textField else {return}
        textField.leftView = UIView(frame: CGRect(x: 5, y: 0, width: 35, height: 40))
        getImageMagnify(parent: textField.leftView!)
        textField.leftViewMode = .always
        textField.borderStyle = .roundedRect
        textField.font = Styling.getFont(size: 17)
        
        textField.layer.masksToBounds = false
        textField.layer.shadowRadius = 3.0
        textField.layer.shadowColor = UIColor.lightGray.cgColor
        textField.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        textField.layer.shadowOpacity = 1.0
    }
    
    public static func cornerViews(cornerRadius: CGFloat, _ views: UIView...) {
        views.forEach { (view) in
            view.layer.cornerRadius = cornerRadius
            view.layer.masksToBounds = true
        }
    }
    
    public static func getShadowAttribute() -> [AnyHashable: Any] {
        let myShadow = NSShadow()
        myShadow.shadowBlurRadius = 4
        myShadow.shadowOffset = CGSize(width: 0, height: 2)
        myShadow.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3)
        
        return [ NSAttributedString.Key.shadow: myShadow ]
    }
    
    
    private static func getImageMagnify(parent: UIView) {
        let imgView = UIImageView(image: UIImage(named: "magnify")?.withRenderingMode(.alwaysTemplate))
        imgView.frame = CGRect(x: 8.0, y: 10, width: 20, height: 20)
        imgView.contentMode = .scaleAspectFill
        imgView.tag = 2
        imgView.tintColor = UIColor.gray
        parent.addSubview(imgView)
    }
    
    public static func styleAlertTextField(field: UITextField, placeholder: String = "", defaultText: String = "") {
        field.placeholder = placeholder
        field.text = defaultText
        field.font = Styling.getFont(size: 16)
        field.autocapitalizationType = .sentences
    }
    
}
