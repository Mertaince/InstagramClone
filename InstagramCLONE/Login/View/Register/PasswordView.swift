//
//  PasswordView.swift
//  InstagramCLONE
//
//  Created by Mert ATK on 4.07.2023.
//

import SwiftUI

struct PasswordView: View {
    @State private var password = ""
    @State private var isButtonPressed = false
    var body: some View {
        VStack{
            Text("Şifre Oluştur")
                .bold()
                .font(.system(size:30))
                .padding()
            
            Text("Şifreni hatirlayabileceğimiz için iCloud cihazlarinda girmen gerekmeyecek.")
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.horizontal,20)
            
            TextField("Şifre", text: $password)
                .modifier(TextFieldModifier())
                .padding()
            
            HStack{
                Button{
                    isButtonPressed.toggle()
                }label:{
                    Image(systemName: isButtonPressed ? "square" : "checkmark.square.fill")
                    Text("Şifreyi kaydet")
                }.frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal,20)
                
            }
            
            Button{
                
            }label:{
                Text("İleri")
                    .modifier(ButtonModifier())
            }
            Spacer()
        }
    }
}

struct PasswordView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordView()
    }
}
