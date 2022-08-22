//
//  CopyView.swift
//  ColorChart
//
//  Created by Ryo on 2022/08/22.
//

import SwiftUI

struct CopyView: View {
    var body: some View {
        VStack {
            Spacer()
            
            Label("コピーしました!", systemImage: "doc.on.clipboard")
                .padding()
                .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 8))
        }
    }
}

struct CopyView_Previews: PreviewProvider {
    static var previews: some View {
        CopyView()
    }
}
