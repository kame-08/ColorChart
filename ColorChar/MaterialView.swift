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
    
    var body: some View {
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
                
                VStack (alignment: .leading) {
                    if viewModel.RGB.white == nil {
                        Text("red: \(viewModel.RGB.red!)")
                        Text("green: \(viewModel.RGB.green!)")
                        Text("blue: \(viewModel.RGB.blue!)")
                        Text("opacity: \(viewModel.RGB.opacity)")
                    } else{
                        Text("white: \(viewModel.RGB.white!)")
                        Text("opacity: \(viewModel.RGB.opacity)")
                    }
                }.font(.title)
                    .onLongPressGesture {
                        var pasteboard = ""
                        
                        UINotificationFeedbackGenerator().notificationOccurred(.success)
                        
                        if viewModel.RGB.white == nil {
                            pasteboard = ("red: \(round(viewModel.RGB.red! * 100) / 100), green: \(round(viewModel.RGB.green! * 100) / 100), blue: \(round(viewModel.RGB.blue! * 100) / 100), opacity: \(round(viewModel.RGB.opacity * 100) / 100)")
                        } else{
                            pasteboard = ("white: \(round(viewModel.RGB.white! * 100) / 100), opacity: \(round(viewModel.RGB.opacity * 100) / 100)")
                        }
                        UIPasteboard.general.string = pasteboard
                    }
                
                Spacer()
                
                ZStack{
                    Text(colorScheme == .light ? "黒文字" : "白文字")
                        .font(.title)
                        .aspectRatio(contentMode: .fit)
                    Image(systemName: "squareshape.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .background(material)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                }
                
                Spacer()
                
            }
    }
}

struct MaterialView_Previews: PreviewProvider {
    static var previews: some View {
        MaterialView(materialName: ".regular", material: .regular)
    }
}
