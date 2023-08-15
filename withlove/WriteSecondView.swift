//
//  WriteSecondView.swift
//  withlove
//
//  Created by scholar on 8/15/23.
//

import SwiftUI

struct WriteSecondView: View {
    @Binding var color : String
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
        }
    }
}

struct WriteSecondView_Previews: PreviewProvider {
    static var previews: some View {
        WriteSecondView(color: .constant(""))
    }
}
