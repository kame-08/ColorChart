//
//  ContentViewModel.swift
//  ColorChart
//
//  Created by Ryo on 2022/08/16.
//

import Foundation
import SwiftUI

class ContentViewModel: ObservableObject {
    // Standard colors
    let color1 = [
        ColorStr(name: ".black", color: .black),
        ColorStr(name: ".blue", color: .blue),
        ColorStr(name: ".brown", color: .brown),
        ColorStr(name: ".clear", color: .clear),
        ColorStr(name: ".cyan", color: .cyan),
        ColorStr(name: ".gray", color: .gray),
        ColorStr(name: ".green", color: .green),
        ColorStr(name: ".indigo", color: .indigo),
        ColorStr(name: ".mint", color: .mint),
        ColorStr(name: ".orange", color: .orange),
        ColorStr(name: ".pink", color: .pink),
        ColorStr(name: ".purple", color: .purple),
        ColorStr(name: ".red", color: .red),
        ColorStr(name: ".teal", color: .teal),
        ColorStr(name: ".white", color: .white),
        ColorStr(name: ".yellow", color: .yellow)
    ]
    
    // Semantic colors
    let color2 = [
        ColorStr(name: ".accentColor", color: .accentColor),
        ColorStr(name: ".primary", color: .primary),
        ColorStr(name: ".secondary", color: .secondary)
    ]
    
    // Label colors
    let color3 = [
        ColorStr(name: ".label", color: Color(.label)),
        ColorStr(name: ".secondaryLabel", color: Color(.secondaryLabel)),
        ColorStr(name: ".tertiaryLabel", color: Color(.tertiaryLabel)),
        ColorStr(name: ".quaternaryLabel", color: Color(.quaternaryLabel))
    ]
    
    // Fill colors
    let color4 = [
        ColorStr(name: ".systemFill", color: Color(.systemFill)),
        ColorStr(name: ".secondarySystemFill", color: Color(.secondarySystemFill)),
        ColorStr(name: ".tertiarySystemFill", color: Color(.tertiarySystemFill)),
        ColorStr(name: ".quaternarySystemFill", color: Color(.quaternarySystemFill))
    ]
    
    // Text colors
    let color5 = [
        ColorStr(name: ".placeholderText", color: Color(.placeholderText))
    ]
    
    // Tint color
    let color6 = [
        ColorStr(name: ".tintColor", color: Color(.tintColor))
    ]
    
    // Standard content background colors
    let color7 = [
        ColorStr(name: ".systemBackground", color: Color(.systemBackground)),
        ColorStr(name: ".secondarySystemBackground", color: Color(.secondarySystemBackground)),
        ColorStr(name: ".tertiarySystemBackground", color: Color(.tertiarySystemBackground))
    ]
    
    // Grouped content background colors
    let color8 = [
        ColorStr(name: ".systemGroupedBackground", color: Color(.systemGroupedBackground)),
        ColorStr(name: ".secondarySystemGroupedBackground", color: Color(.secondarySystemGroupedBackground)),
        ColorStr(name: ".tertiarySystemGroupedBackground", color: Color(.tertiarySystemGroupedBackground))
    ]
    
    // Separator colors
    let color9 = [
        ColorStr(name: ".separator", color: Color(.separator)),
        ColorStr(name: ".opaqueSeparator", color: Color(.opaqueSeparator))
    ]
    
    // Link color
    let color10 = [
        ColorStr(name: ".link", color: Color(.link))
    ]
    
    // Nonadaptable colors
    let color11 = [
        ColorStr(name: ".darkText", color: Color(.darkText)),
        ColorStr(name: ".lightText", color: Color(.lightText))
    ]
    
    // Adaptable colors
    let color12 = [
        ColorStr(name: ".systemBlue", color: Color(.systemBlue)),
        ColorStr(name: ".systemBrown", color: Color(.systemBrown)),
        ColorStr(name: ".systemCyan", color: Color(.systemCyan)),
        ColorStr(name: ".systemGreen", color: Color(.systemGreen)),
        ColorStr(name: ".systemIndigo", color: Color(.systemIndigo)),
        ColorStr(name: ".systemMint", color: Color(.systemMint)),
        ColorStr(name: ".systemOrange", color: Color(.systemOrange)),
        ColorStr(name: ".systemPink", color: Color(.systemPink)),
        ColorStr(name: ".systemPurple", color: Color(.systemPurple)),
        ColorStr(name: ".systemRed", color: Color(.systemRed)),
        ColorStr(name: ".systemTeal", color: Color(.systemTeal)),
        ColorStr(name: ".systemYellow", color: Color(.systemYellow))
    ]
    
    // Adaptable gray colors
    let color13 = [
        ColorStr(name: ".systemGray", color: Color(.systemGray)),
        ColorStr(name: ".systemGray2", color: Color(.systemGray2)),
        ColorStr(name: ".systemGray3", color: Color(.systemGray3)),
        ColorStr(name: ".systemGray4", color: Color(.systemGray4)),
        ColorStr(name: ".systemGray5", color: Color(.systemGray5)),
        ColorStr(name: ".systemGray6", color: Color(.systemGray6))
    ]
    
    // Transparent color
    let color14 = [
        ColorStr(name: ".clear", color: Color(.clear))
    ]
    
    // Fixed colors
    let color15 = [
        ColorStr(name: ".black", color: Color(.black)),
        ColorStr(name: ".blue", color: Color(.blue)),
        ColorStr(name: ".brown", color: Color(.brown)),
        ColorStr(name: ".cyan", color: Color(.cyan)),
        ColorStr(name: ".darkGray", color: Color(.darkGray)),
        ColorStr(name: ".gray", color: Color(.gray)),
        ColorStr(name: ".green", color: Color(.green)),
        ColorStr(name: ".lightGray", color: Color(.lightGray)),
        ColorStr(name: ".magenta", color: Color(.magenta)),
        ColorStr(name: ".orange", color: Color(.orange)),
        ColorStr(name: ".purple", color: Color(.purple)),
        ColorStr(name: ".red", color: Color(.red)),
        ColorStr(name: ".white", color: Color(.white)),
        ColorStr(name: ".yellow", color: Color(.yellow))
    ]
    
    let material1 = [
        MaterialStr(name: ".ultraThin", material: .ultraThin),
        MaterialStr(name: ".thin", material: .thin),
        MaterialStr(name: ".regular", material: .regular),
        MaterialStr(name: ".thick", material: .thick),
        MaterialStr(name: ".ultraThick", material: .ultraThick),
        MaterialStr(name: ".bar", material: .bar)
    ]
}
