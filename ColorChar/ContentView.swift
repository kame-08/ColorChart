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
                        ForEach(viewModel.color1) { coloras in
                            NavigationLink {
                                ColorView(colorName: coloras.name, color: coloras.color)
                            } label: {
                                ColorCellView(colorName: coloras.name, color: coloras.color)
                            }
                        }
                    }header: {
                        Text("Standard colors")
                    }
                    
                    Section {
                        ForEach(viewModel.color2) { coloras in
                            NavigationLink {
                                ColorView(colorName: coloras.name, color: coloras.color)
                            } label: {
                                ColorCellView(colorName: coloras.name, color: coloras.color)
                            }
                        }
                    }header: {
                        Text("Semantic colors")
                    }
                    
                    Section {
                        ForEach(viewModel.color3) { coloras in
                            NavigationLink {
                                ColorView(colorName: coloras.name, color: coloras.color)
                            } label: {
                                ColorCellView(colorName: coloras.name, color: coloras.color)
                            }
                        }
                    }header: {
                        Text("Label colors")
                    }
                    
                    Section {
                        ForEach(viewModel.color4) { coloras in
                            NavigationLink {
                                ColorView(colorName: coloras.name, color: coloras.color)
                            } label: {
                                ColorCellView(colorName: coloras.name, color: coloras.color)
                            }
                        }
                    }header: {
                        Text("Fill colors")
                    }
                    
                    Section {
                        ForEach(viewModel.color5) { coloras in
                            NavigationLink {
                                ColorView(colorName: coloras.name, color: coloras.color)
                            } label: {
                                ColorCellView(colorName: coloras.name, color: coloras.color)
                            }
                        }
                    }header: {
                        Text("Text colors")
                    }
                    
                    Section {
                        ForEach(viewModel.color6) { coloras in
                            NavigationLink {
                                ColorView(colorName: coloras.name, color: coloras.color)
                            } label: {
                                ColorCellView(colorName: coloras.name, color: coloras.color)
                            }
                        }
                    }header: {
                        Text("Tint color")
                    }
                    
                    Section {
                        ForEach(viewModel.color7) { coloras in
                            NavigationLink {
                                ColorView(colorName: coloras.name, color: coloras.color)
                            } label: {
                                ColorCellView(colorName: coloras.name, color: coloras.color)
                            }
                        }
                    }header: {
                        Text("Standard content background colors")
                    }
                    
                    Section {
                        ForEach(viewModel.color8) { coloras in
                            NavigationLink {
                                ColorView(colorName: coloras.name, color: coloras.color)
                            } label: {
                                ColorCellView(colorName: coloras.name, color: coloras.color)
                            }
                        }
                    }header: {
                        Text("Grouped content background colors")
                    }
                    
                    Section {
                        ForEach(viewModel.color9) { coloras in
                            NavigationLink {
                                ColorView(colorName: coloras.name, color: coloras.color)
                            } label: {
                                ColorCellView(colorName: coloras.name, color: coloras.color)
                            }
                        }
                    }header: {
                        Text("Separator colors")
                    }
                    
                    Section {
                        ForEach(viewModel.color10) { coloras in
                            NavigationLink {
                                ColorView(colorName: coloras.name, color: coloras.color)
                            } label: {
                                ColorCellView(colorName: coloras.name, color: coloras.color)
                            }
                        }
                    }header: {
                        Text("Link color")
                    }
                    
                }
                
                Group {
                    
                    Section {
                        ForEach(viewModel.color11) { coloras in
                            NavigationLink {
                                ColorView(colorName: coloras.name, color: coloras.color)
                            } label: {
                                ColorCellView(colorName: coloras.name, color: coloras.color)
                            }
                        }
                    }header: {
                        Text("Nonadaptable colors")
                    }
                    
                    Section {
                        ForEach(viewModel.color12) { coloras in
                            NavigationLink {
                                ColorView(colorName: coloras.name, color: coloras.color)
                            } label: {
                                ColorCellView(colorName: coloras.name, color: coloras.color)
                            }
                        }
                    }header: {
                        Text("Adaptable colors")
                    }
                    
                    Section {
                        ForEach(viewModel.color13) { coloras in
                            NavigationLink {
                                ColorView(colorName: coloras.name, color: coloras.color)
                            } label: {
                                ColorCellView(colorName: coloras.name, color: coloras.color)
                            }
                        }
                    }header: {
                        Text("Adaptable gray colors")
                    }
                    
                    Section {
                        ForEach(viewModel.color14) { coloras in
                            NavigationLink {
                                ColorView(colorName: coloras.name, color: coloras.color)
                            } label: {
                                ColorCellView(colorName: coloras.name, color: coloras.color)
                            }
                        }
                    }header: {
                        Text("Transparent color")
                    }
                    
                    Section {
                        ForEach(viewModel.color15) { coloras in
                            NavigationLink {
                                ColorView(colorName: coloras.name, color: coloras.color)
                            } label: {
                                ColorCellView(colorName: coloras.name, color: coloras.color)
                            }
                        }
                    }header: {
                        Text("Fixed colors")
                    }
                    
                    //                    Section {
                    //                        ForEach(viewModel.material1) { coloras in
                    //                            NavigationLink {
                    //                                MaterialView(materialName: coloras.name, material: coloras.material)
                    //                            } label: {
                    //                                MaterialCellView(materialName: coloras.name, color: coloras.material)
                    //                            }
                    //                        }
                    //                    }header: {
                    //                        Text("Fixed colors")
                    //                    }
                    
                }
                
            }.listStyle(.plain)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
