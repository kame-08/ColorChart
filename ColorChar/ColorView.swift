//
//  ColorView.swift
//  ColorChart
//
//  Created by Ryo on 2022/08/16.
//

import SwiftUI

struct ColorView: View {
    //ダークモード判定
    @Environment(\.colorScheme) var colorScheme
    
    @ObservedObject var viewModel = ColorViewModel()
    
    @State var colorName :String
    @State var color :Color
    
     @State var flag = false
    
    var body: some View {
        ZStack {
            VStack {
                    HStack {
                        Text(colorName)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .lineLimit(1)
                            .minimumScaleFactor(0.1)
                        
                        Spacer()
                        
                    }
                    .padding(/*@START_MENU_TOKEN@*/[.leading, .bottom, .trailing]/*@END_MENU_TOKEN@*/)
                    .onLongPressGesture {
                        UINotificationFeedbackGenerator().notificationOccurred(.success)
                        UIPasteboard.general.string = ("\(colorName)")
                        
                        flag = true
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            flag = false
                        }
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
                            
                            flag = true
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                flag = false
                            }
                        }
                    
                    Spacer()
                    
                    ZStack{
                        Text(colorScheme == .light ? "黒文字" : "白文字")
                            .font(.title)
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: "squareshape.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(color)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    }
                    
                    Spacer()
                    
                }
            .onChange(of: colorScheme, perform: { newValue in
                viewModel.getColorElements(color: UIColor(color))
            })
            .onAppear() {
                viewModel.getColorElements(color: UIColor(color))
        }
            

                CopyView()
                .offset(y: flag ? 0 : 100)
                .animation(.default, value: flag)
        }
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(colorName: ".orange", color: .orange)
    }
}
