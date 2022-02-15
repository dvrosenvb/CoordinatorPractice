//
//  ThemeManager.swift
//  BreakingBad
//
//  Created by Rosendo Vázquez Bailón on 12/02/22.
//

import Foundation

import UIKit
import SwiftUI

public struct ThemeManager {
    //MARK: - Constants -
    public static let BASE_URL = "https://www.breakingbadapi.com/api/"
    public static let CHAR_PATH = "characters?name="
    public static let PLACE_HOLDER = "Let's get cook..."
    
    //MARK: - Colors -
    public static let blue_bg = #colorLiteral(red: 0.0862745098, green: 0.003921568627, blue: 0.7137254902, alpha: 1)
    public static let orange_bg = #colorLiteral(red: 0.9843137255, green: 0.2392156863, blue: 0.003921568627, alpha: 1)
    public static let yellow_bg = #colorLiteral(red: 0.9921568627, green: 0.6980392157, blue: 0.2431372549, alpha: 1)
    public static let gray_bg = #colorLiteral(red: 0.9294117647, green: 0.9294117647, blue: 0.9294117647, alpha: 1)
    
    
    public static func RegularFont(_ ofSize: CGFloat) -> UIFont {
        return UIFont(name: "Poppins-Regular", size: ofSize) ?? UIFont.systemFont(ofSize: ofSize, weight: .regular)
    }

    public static func MediumFont(_ ofSize: CGFloat) -> UIFont {
        return UIFont(name: "Poppins-Medium", size: ofSize) ?? UIFont.systemFont(ofSize: ofSize, weight: .medium)
    }
    
    public static func SemiboldFont(_ ofSize: CGFloat) -> UIFont {
        return UIFont(name: "Poppins-SemiBold", size: ofSize) ?? UIFont.systemFont(ofSize: ofSize, weight: .semibold)
    }
    
    public static func BoldFont(_ ofSize: CGFloat) -> UIFont {
        return UIFont(name: "Poppins-Bold", size: ofSize) ?? UIFont.systemFont(ofSize: ofSize, weight: .bold)
    }
    
    public static func ItalicFont(_ ofSize: CGFloat) -> UIFont {
        return UIFont.italicSystemFont(ofSize: ofSize)
    }
}

