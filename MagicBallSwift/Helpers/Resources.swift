//
//  Resources.swift
//  MagicBallSwift
//
//  Created by Karen Vardanian on 06.02.2023.
//

import UIKit

enum R {
    //MARK: - fonts
    enum Fonts {
        static func AppleSDGothicNeoLight (with size: CGFloat) -> UIFont {
            UIFont(name: "AppleSDGothicNeo-Light", size: size) ?? UIFont()
        }
        
        static let customButtonTitle = NSMutableAttributedString(string: "Click", attributes: [
            NSAttributedString.Key.font: UIFont(name: "AppleSDGothicNeo-Light", size: 44) ?? UIFont(),
        ])
        static let customButtonTitlePress = NSMutableAttributedString(string: "...", attributes: [
            NSAttributedString.Key.font: UIFont(name: "AppleSDGothicNeo-Light", size: 44) ?? UIFont(),
        ])
    }
    //MARK: - strings
    enum Strings {
        static let askAgain = "Ask me again!"
    }
    //MARK: - colors
    enum Colors {
        static let black = UIColor.black
        static let pinkCustom = UIColor(red: 0.84, green: 0.51, blue: 1.00, alpha: 1.00)
    }
    
}
