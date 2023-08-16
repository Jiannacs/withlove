//
//  ReadView.swift
//  withlove
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct ReadView: View {
    var body: some View {
        ScrollView() {
            VStack() {
                NavigationStack() {
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
                        //title
                        Text("Read")
                            .font(.system(size: 40))
                            .font(.title)
                            .multilineTextAlignment(.center)
                            .lineLimit(0)
                            .padding(.all)
                        Text("Pre Written letter")
                        //each navigation link will take you to the page that is desginated for the pre written letter
                        NavigationLink(destination: LetterOneView()) {
                            Image("lettericon")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode:.fill)
                                .padding(.all)
                        }
                        NavigationLink(destination: LetterTwoView()) {
                            Image("lettericon")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fill)
                                .padding(.all)
                        }
                        NavigationLink(destination: LetterThreeView()) {
                            Image("lettericon")
                                .resizable(resizingMode:.stretch)
                                .aspectRatio(contentMode: .fill)
                                .padding(.all)
                        }
                    }
                }
            }
        }
    }
}

struct ReadView_Previews: PreviewProvider {
    static var previews: some View {
        ReadView()
    }
}
