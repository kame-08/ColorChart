//
//  MaterialView.swift
//  ColorChart
//
//  Created by Ryo on 2022/08/16.
//

import SwiftUI

struct MaterialView: View {
    //ダークモード判定
    @Environment(\.colorScheme) var colorScheme
    
    @ObservedObject var viewModel = ColorViewModel()
    
    @State var materialName :String
    @State var material :Material
    
    @State var flag = false
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Text(materialName)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .lineLimit(1)
                        .minimumScaleFactor(0.1)
                    
                    Spacer()
                    
                }
                .padding(/*@START_MENU_TOKEN@*/[.leading, .bottom, .trailing]/*@END_MENU_TOKEN@*/)
                .onLongPressGesture {
                    UINotificationFeedbackGenerator().notificationOccurred(.success)
                    UIPasteboard.general.string = ("\(materialName)")
                }
                
                Spacer()
                
                ZStack{
                    Text(colorScheme == .light ? "黒文字" : "白文字")
                        .font(.title)
                        .aspectRatio(contentMode: .fit)
                    Image(systemName: "squareshape.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.clear)
                        .background(material)
                        .cornerRadius(14)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                }
                
                Spacer()
                
            }
            
            CopyView()
                .offset(y: flag ? 0 : 100)
                .animation(.default, value: flag)
        }
    }
}

struct MaterialView_Previews: PreviewProvider {
    static var previews: some View {
        MaterialView(materialName: ".regular", material: .regular)
    }
}
