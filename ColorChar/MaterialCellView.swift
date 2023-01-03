//
//  MaterialCellView.swift
//  ColorChart
//
//  Created by Ryo on 2022/08/16.
//

import SwiftUI

struct MaterialCellView: View {
    //ダークモード判定
    @Environment(\.colorScheme) var colorScheme
    @State var materialName: String
    @State var material: Material
    
    var body: some View {
        HStack{
            HStack{
                Text(materialName)
                    .lineLimit(1)
                    .minimumScaleFactor(0.1)
                Spacer()
            }
            ZStack{
                Text(colorScheme == .light ? "黒文字" : "白文字")
                RoundedRectangle(cornerRadius: 10)
                    .fill(material)
            }
        }
    }
}

struct MaterialCellView_Previews: PreviewProvider {
    static var previews: some View {
        MaterialCellView(materialName: ".regular", material: .regular)
    }
}
