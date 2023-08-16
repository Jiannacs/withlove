//
//  WriteSecondView.swift
//  withlove
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct WriteSecondView: View {
    @Binding var color : String
    @State var font = ""
    @State var stamp = ""
    var body: some View {
        ZStack() {
            if color == "pink" {
                Color(red: 0.941, green: 0.897, blue: 0.923)
                    .ignoresSafeArea()
            } else if color == "green" {
                Color(red: 0.816, green: 0.957, blue: 0.768)
                    .ignoresSafeArea()
            } else if color == "blue" {
                Color(red: 0.752, green: 0.915, blue: 0.989)
                    .ignoresSafeArea()
            } else if color == "yellow" {
                Color(red: 0.983, green: 0.988, blue: 0.604)
                    .ignoresSafeArea()
            } else if color == "orange" {
                Color(red: 1.0, green: 0.853, blue: 0.703)
                    .ignoresSafeArea()
            } else if color == "purple" {
                Color(red: 0.836, green: 0.831, blue: 0.896)
                    .ignoresSafeArea()
            }
            NavigationStack() {
                // navigation heart
                HStack() {
                    Spacer()
                    NavigationLink(destination: ContentView()) {
                        VStack(alignment: .center) {
                            Image("lettericon")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding(.trailing, 10.0)
                                .frame(width: 50.0)
                            Text("Home")
                                .padding(.trailing, 10.0)
                        }
                    }
                }
                VStack() {
                    Spacer()
                    // fonts
                    Text("Fonts")
                        .font(.largeTitle)
                        .font(.system(size: 35))
                    HStack() {
                        NavigationLink(destination: WriteThirdView()) {
                            Image("lettericon")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding([.leading, .bottom, .trailing], 20)
                                .frame(width: 110)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            font = "font1"
                        })
                        NavigationLink(destination: WriteThirdView()) {
                            Image("lettericon")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding([.leading, .bottom, .trailing], 20)
                                .frame(width: 110)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            font = "font2"
                        })
                    }
                    HStack() {
                        NavigationLink(destination: WriteThirdView()) {
                            Image("lettericon")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding(.horizontal, 20)
                                .frame(width: 110)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            font = "font3"
                        })
                        NavigationLink(destination: WriteThirdView()) {
                            Image("lettericon")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding(.horizontal, 20)
                                .frame(width: 110)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            font = "font4"
                        })
                    }
                    // stamps
                    Text("Stamps")
                        .font(.largeTitle)
                        .font(.system(size: 35))
                        .padding(.top, 40.0)
                    HStack() {
                        NavigationLink(destination: WriteThirdView()) {
                            Image("lettericon")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding([.leading, .bottom, .trailing], 20)
                                .frame(width: 110)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            stamp = "stamp1"
                        })
                        NavigationLink(destination: WriteThirdView()) {
                            Image("lettericon")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding([.leading, .bottom, .trailing], 20)
                                .frame(width: 110)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            stamp = "stamp2"
                        })
                    }
                    HStack() {
                        NavigationLink(destination: WriteThirdView()) {
                            Image("lettericon")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding(.horizontal, 20)
                                .frame(width: 110)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            stamp = "stamp3"
                        })
                        NavigationLink(destination: WriteThirdView()) {
                            Image("lettericon")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding(.horizontal, 20)
                                .frame(width: 110)
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            stamp = "stamp4"
                        })
                    }
                    Spacer()
                }
            }
        }
    }
}

struct WriteSecondView_Previews: PreviewProvider {
    static var previews: some View {
        WriteSecondView(color: .constant(""))
    }
}
