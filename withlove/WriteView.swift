//
//  WriteView.swift
//  withlove
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct WriteView: View {
    @State var color = ""
    var body: some View {
        NavigationStack() {
            ZStack() {
                Color(red: 0.996, green: 0.976, blue: 0.92)
                    .ignoresSafeArea()
                VStack() {
                    // separates title and top of screen
                    Spacer()
                        .frame(height: 51.0);
                    // main title, seen on the very top
                    Text("Customize your letter. . . ")
                        .font(.system(size: 34))
                        .frame(height: 20.0)
                        .frame(height: 5.0);
                    Spacer();
                    // setting the placement for images (That are letters)
                    HStack() {
                        // letters link to WriteSecondView page
                        NavigationLink(destination: WriteSecondView(color: $color)) {
                            // pink
                            Image("lettericon")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding()
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            color = "pink"
                        })
                        NavigationLink(destination: WriteSecondView(color: $color)) {
                            // green
                            Image("lettericon")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding()
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            color = "green"
                        })
                    }
                    HStack() {
                        NavigationLink(destination: WriteSecondView(color: $color)) {
                            // blue
                            Image("lettericon")
                              .resizable(resizingMode: .stretch)
                              .aspectRatio(contentMode: .fit)
                              .padding()
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            color = "blue"
                        })
                        NavigationLink(destination: WriteSecondView(color: $color)) {
                            // yellow
                            Image("lettericon")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding()
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            color = "yellow"
                        })
                    }
                    HStack() {
                        NavigationLink(destination: WriteSecondView(color: $color)) {
                            // orange
                            Image("lettericon")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding()
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            color = "orange"
                        })
                        NavigationLink(destination: WriteSecondView(color: $color)) {
                            // purple
                            Image("lettericon")
                                .resizable(resizingMode:    .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding()
                        }
                        .simultaneousGesture(TapGesture().onEnded{
                            color = "purple"
                        })
                  }
                  Spacer()
                }
            }
        }
    }
}

struct WriteView_Previews: PreviewProvider {
    static var previews: some View {
        WriteView()
    }
}
