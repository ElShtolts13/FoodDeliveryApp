//
//  UIFont + Extension.swift
//  FoodDeliveryApp
//
//  Created by Надежда Капацина on 24.09.2024.
//

import UIKit


extension UIFont {
    enum Roboto {
        enum black {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.black, size: size)!
            }
        }
        enum boldItalic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.boltItalic,
                              size: size)!
            }
            
        }
        enum bold {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.bold,
                              size: size)!
            }
            
        }
        enum boltItalic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.boltItalic,
                              size: size)!
            }
            
        }
        enum italic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.italic,
                              size: size)!
            }
            
        }
        
    }
    enum light {
        static func size(of size: CGFloat) -> UIFont {
            return UIFont(name: Constants.Roboto.light,
                          size: size)!
        }
        
    }
    enum lightItalic {
        static func size(of size: CGFloat) -> UIFont {
            return UIFont(name: Constants.Roboto.lightItalic,
                          size: size)!
        }
        
    }
    enum mediumItalic {
        static func size(of size: CGFloat) -> UIFont {
            return UIFont(name: Constants.Roboto.mediumItalic,
                          size: size)!
        }
        
    }
    enum regular {
        static func size(of size: CGFloat) -> UIFont {
            return UIFont(name: Constants.Roboto.regular,
                          size: size)!
        }
        
    }
    enum thin {
        static func size(of size: CGFloat) -> UIFont {
            return UIFont(name: Constants.Roboto.thin,
                          size: size)!
        }
        
    }
    enum thinItalic {
        static func size(of size: CGFloat) -> UIFont {
            return UIFont(name: Constants.Roboto.thinItalic,
                          size: size)!
        }
        
    }
}
    private extension UIFont {
        enum Constants {
            enum Roboto {
                static let black = "Roboto-Black"
                static let blackItalic = "Roboto-BoldItalic"
                static let bold = "Roboto-Bold"
                static let boltItalic = "Roboto-BoldItalic"
                static let italic = "Roboto-Italic"
                static let light = "Roboto-Light"
                static let lightItalic = "Roboto-LightItalic"
                static let mediumItalic = "Roboto-MediumItalic"
                static let regular = "Roboto-Regular"
                static let thin = "Roboto-Thin"
                static let thinItalic = "Roboto-ThinItalic"
                
                
            }
        }
    }

