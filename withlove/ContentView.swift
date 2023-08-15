//
//  ContentView.swift
//  withlove
//
//  Created by scholar on 8/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.996, green: 0.976, blue: 0.92)
                .ignoresSafeArea()
            VStack {
                Text("With Love")
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.907, green: 0.56, blue: 0.556))
                    .font(.system(size: 50))
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
