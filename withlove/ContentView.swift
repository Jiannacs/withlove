//
//  ContentView.swift
//  withlove
//
//  Created by scholar on 8/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack() {
            ZStack {
                Color(red: 0.996, green: 0.976, blue: 0.92)
                    .ignoresSafeArea()
                VStack {
                    HStack() {
                        Spacer()
                        NavigationLink(destination: AboutUsView()) {
                            VStack(alignment: .center) {
                                Image("lettericon")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .padding(.trailing, 10.0)
                                    .frame(width: 50.0)
                                Text("About Us")
                                    .foregroundColor(Color(hue: 1.0, saturation: 0.983, brightness: 1.0))
                                    .padding(.trailing, 10.0)
                                    
                            }
                        }
                    }
                    Spacer()
                        .frame(height: 150.0)
                    Text("With Love,")
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.907, green: 0.56, blue: 0.556))
                       // .font(.system(size: 50))
                        .multilineTextAlignment(.center)
                        .font(Font.custom("Sansilk", size: 80))
                    HStack() {
                        NavigationLink(destination: ReadView()) {
                            VStack() {
                                Image("lettericon")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100.0)
                                Text("Read")
                                    .foregroundColor(Color(hue: 0.901, saturation: 1.0, brightness: 1.0))
                                    
                            }
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        NavigationLink(destination: WriteView()) {
                            VStack() {
                                Image("lettericon")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100.0)
                                Text("Write")
                                    .foregroundColor(Color(hue: 1.0, saturation: 0.975, brightness: 0.594))
                                    .lineLimit(nil)
                                   
                            }
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    }
                    NavigationLink(destination: MyLettersView()) {
                        VStack() {
                            Image("lettericon")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100.0)
                            Text("My letters")
                                .foregroundColor(Color(hue: 0.915, saturation: 0.726, brightness: 0.977))
                                
                        }
                    }
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    Spacer()
                        .frame(height: 150)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
