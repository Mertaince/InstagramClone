//
//  Modifier.swift
//  InstagramCLONE
//
//  Created by Mert ATK on 4.07.2023.
//

import SwiftUI

struct TextFieldModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .padding(12)
            .frame(width: 350, height: 50)
            .background(Color(.systemGray6))
            .cornerRadius(8)
            .font(.footnote)
    }
}

struct ButtonModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .padding(12)
            .frame(width: 350, height: 50)
            .background(Color(.systemBlue))
            .cornerRadius(10)
            .foregroundColor(.white)
            .padding(.vertical,12)
    }
}
