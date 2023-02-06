//
//  Resources.swift
//  MagicBallSwift
//
//  Created by Karen Vardanian on 06.02.2023.
//

import UIKit

enum R {
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
    
}
