//
//  ColorElements.swift
//  ColorChar
//
//  Created by Ryo on 2022/08/17.
//

import Foundation
import SwiftUI

struct ColorElements {
    func getColorElements(color: UIColor) -> (red:CGFloat?, green:CGFloat?, blue:CGFloat?, white:CGFloat?, opacity:CGFloat) {
        
        let components = color.cgColor.components!
        
                if components.count == 2 {
                    return (red: nil, green: nil, blue: nil, white: components[0], opacity: components[1] )
                } else {
                    return (red: components[0], green: components[1], blue: components[2], white: nil, opacity: components[3] )
        }
    }
}
