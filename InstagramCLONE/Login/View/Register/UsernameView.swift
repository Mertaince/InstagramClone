//
//  UsernameView.swift
//  InstagramCLONE
//
//  Created by Mert ATK on 4.07.2023.
//

import SwiftUI

struct UsernameView: View {
    @State private var username = ""
    var body: some View {
        NavigationStack{
            VStack{
                Text("Kullanıcı Adı Oluştur")
                    .bold()
                    .font(.system(size:30))
                    .padding()
                Text("Yeni hesabın için bir kullanıcı ad seç. Daha sonra istediğin zaman değiştirebilirsin.")
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .foregroundColor(Color(.systemGray))
                
                TextField("Kullanıcı adı", text: $username)
                    .modifier(TextFieldModifier())
                
                NavigationLink{
                    PasswordView()
                }label:{
                    Text("İleri")
                        .modifier(ButtonModifier())
                }
                Spacer()
            }
        }
    }
}

struct UsernameView_Previews: PreviewProvider {
    static var previews: some View {
        UsernameView()
    }
}
