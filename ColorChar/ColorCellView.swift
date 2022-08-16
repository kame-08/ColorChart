//
//  ColorCellView.swift
//  ColorChart
//
//  Created by Ryo on 2022/08/16.
//

import SwiftUI

struct ColorCellView: View {
    
    //ダークモード判定
    @Environment(\.colorScheme) var colorScheme
    @State var colorName: String
    @State var color: Color
    
    var body: some View {
        HStack{
            Text(colorName)
                .lineLimit(1)
                .minimumScaleFactor(0.1)
            
            Spacer()
            
            ZStack{
                Text(colorScheme == .light ? "黒文字" : "白文字")
                RoundedRectangle(cornerRadius: 10)
                    .fill(color)
            }
            .frame(width: UIScreen.main.bounds.width / 2)
        }
    }
}

struct ColorCellView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCellView(colorName: ".orange", color: .orange)
    }
}
