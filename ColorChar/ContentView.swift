//
//  ContentView.swift
//  ColorChart
//
//  Created by Ryo on 2022/08/16.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = ContentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                
                Group {
                    
                    Section {
                        ForEach(viewModel.color1) { colors in
                            NavigationLink {
                                ColorView(colorName: colors.name, color: colors.color)
                            } label: {
                                ColorCellView(colorName: colors.name, color: colors.color)
                            }
                        }
                    }header: {
                        Text("Standard colors")
                    }
                    
                    Section {
                        ForEach(viewModel.color2) { colors in
                            NavigationLink {
                                ColorView(colorName: colors.name, color: colors.color)
                            } label: {
                                ColorCellView(colorName: colors.name, color: colors.color)
                            }
                        }
                    }header: {
                        Text("Semantic colors")
                    }
                    
                    Section {
                        ForEach(viewModel.color3) { colors in
                            NavigationLink {
                                ColorView(colorName: colors.name, color: colors.color)
                            } label: {
                                ColorCellView(colorName: colors.name, color: colors.color)
                            }
                        }
                    }header: {
                        Text("Label colors")
                    }
                    
                    Section {
                        ForEach(viewModel.color4) { colors in
                            NavigationLink {
                                ColorView(colorName: colors.name, color: colors.color)
                            } label: {
                                ColorCellView(colorName: colors.name, color: colors.color)
                            }
                        }
                    }header: {
                        Text("Fill colors")
                    }
                    
                    Section {
                        ForEach(viewModel.color5) { colors in
                            NavigationLink {
                                ColorView(colorName: colors.name, color: colors.color)
                            } label: {
                                ColorCellView(colorName: colors.name, color: colors.color)
                            }
                        }
                    }header: {
                        Text("Text colors")
                    }
                    
                    Section {
                        ForEach(viewModel.color6) { colors in
                            NavigationLink {
                                ColorView(colorName: colors.name, color: colors.color)
                            } label: {
                                ColorCellView(colorName: colors.name, color: colors.color)
                            }
                        }
                    }header: {
                        Text("Tint color")
                    }
                    
                    Section {
                        ForEach(viewModel.color7) { colors in
                            NavigationLink {
                                ColorView(colorName: colors.name, color: colors.color)
                            } label: {
                                ColorCellView(colorName: colors.name, color: colors.color)
                            }
                        }
                    }header: {
                        Text("Standard content background colors")
                    }
                    
                    Section {
                        ForEach(viewModel.color8) { colors in
                            NavigationLink {
                                ColorView(colorName: colors.name, color: colors.color)
                            } label: {
                                ColorCellView(colorName: colors.name, color: colors.color)
                            }
                        }
                    }header: {
                        Text("Grouped content background colors")
                    }
                    
                    Section {
                        ForEach(viewModel.color9) { colors in
                            NavigationLink {
                                ColorView(colorName: colors.name, color: colors.color)
                            } label: {
                                ColorCellView(colorName: colors.name, color: colors.color)
                            }
                        }
                    }header: {
                        Text("Separator colors")
                    }
                    
                    Section {
                        ForEach(viewModel.color10) { colors in
                            NavigationLink {
                                ColorView(colorName: colors.name, color: colors.color)
                            } label: {
                                ColorCellView(colorName: colors.name, color: colors.color)
                            }
                        }
                    }header: {
                        Text("Link color")
                    }
                    
                }
                
                Group {
                    
                    Section {
                        ForEach(viewModel.color11) { colors in
                            NavigationLink {
                                ColorView(colorName: colors.name, color: colors.color)
                            } label: {
                                ColorCellView(colorName: colors.name, color: colors.color)
                            }
                        }
                    }header: {
                        Text("Nonadaptable colors")
                    }
                    
                    Section {
                        ForEach(viewModel.color12) { colors in
                            NavigationLink {
                                ColorView(colorName: colors.name, color: colors.color)
                            } label: {
                                ColorCellView(colorName: colors.name, color: colors.color)
                            }
                        }
                    }header: {
                        Text("Adaptable colors")
                    }
                    
                    Section {
                        ForEach(viewModel.color13) { colors in
                            NavigationLink {
                                ColorView(colorName: colors.name, color: colors.color)
                            } label: {
                                ColorCellView(colorName: colors.name, color: colors.color)
                            }
                        }
                    }header: {
                        Text("Adaptable gray colors")
                    }
                    
                    Section {
                        ForEach(viewModel.color14) { colors in
                            NavigationLink {
                                ColorView(colorName: colors.name, color: colors.color)
                            } label: {
                                ColorCellView(colorName: colors.name, color: colors.color)
                            }
                        }
                    }header: {
                        Text("Transparent color")
                    }
                    
                    Section {
                        ForEach(viewModel.color15) { colors in
                            NavigationLink {
                                ColorView(colorName: colors.name, color: colors.color)
                            } label: {
                                ColorCellView(colorName: colors.name, color: colors.color)
                            }
                        }
                    }header: {
                        Text("Fixed colors")
                    }
                    
                    Section {
                        ForEach(viewModel.material1) { materials in
                            NavigationLink {
                                MaterialView(materialName: materials.name, material: materials.material)
                            } label: {
                                MaterialCellView(materialName: materials.name, material: materials.material)
                            }
                        }
                    }header: {
                        Text("Fixed colors")
                    }
                    
                }
                
            }.listStyle(.plain)
                .clipped()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
