//
//  ColorViewModel.swift
//  ColorChart
//
//  Created by Ryo on 2022/08/16.
//

import Foundation
import SwiftUI

class ColorViewModel : ObservableObject {
    
    private let model = ColorElements()
    
    @Published var RGB:(red:CGFloat?, green:CGFloat?, blue:CGFloat?, white:CGFloat?, opacity:CGFloat) = (0,0,0,nil,0)
    
    func getColorElements (color: UIColor) {
        RGB = model.getColorElements(color: color)
    }
    
}
