//
//  LoginView.swift
//  InstagramCLONE
//
//  Created by Mert ATK on 4.07.2023.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @Environment(\.colorScheme) private var colorScheme
    @State private var showPassword = false
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                Image(colorScheme == .light ? "inslogo" : "inswhite")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 220, height: 80)
                Group{
                    // TextFieldler
                    VStack{
                        TextField("Telefon numarası, kullanıcı adi veya e-posta", text: $username)
                            .modifier(TextFieldModifier())
                        ZStack{
                            if showPassword{
                                TextField("Şifre", text: $password)
                                    .modifier(TextFieldModifier())
                            } else{
                                SecureField("Şifre", text: $password)
                                    .modifier(TextFieldModifier())
                            }
                            Button{
                                showPassword.toggle()
                            }label:{
                                Image(systemName: showPassword ? "eye.slash.fill" : "eye.fill")
                            }.frame(maxWidth: .infinity, alignment: .trailing)
                                .padding(.horizontal,22)
                                .foregroundColor(Color(.systemGray))
                        }
                    }.padding()
                }
                Group{
                    // Buttons
                    Button{
                        
                    }label:{
                        Text("Şifreni mi unuttun?")
                            .font(.footnote)
                            .padding(.horizontal,20)
                            .frame(maxWidth:.infinity, alignment: .trailing)
                    }
                    
                    Button{
                        
                    }label:{
                        Text("Giriş Yap")
                            .modifier(ButtonModifier())
                    }
                    Spacer()
                        .frame(height: 30)
                }
                HStack{
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 3 ), height: 0.5)
                        .foregroundColor(Color(.systemGray))
                    Text("YA DA")
                        .foregroundColor(Color(.systemGray))
                        .font(.footnote)
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 3 ) , height: 0.5)
                        .foregroundColor(Color(.systemGray))
                }
                Spacer()
                    .frame(height: 30)
                HStack{
                    Button{
                        
                    }label:{
                        Image("facebook")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 30, height: 30)
                            .padding(.horizontal,8)
                        Text("Facebook İle Giriş Yap")
                    }
                }
                Spacer()
                
                Divider()
                NavigationLink{
                    UsernameView()
                }label:{
                    Text("Hesabın yok mu? Kaydol.")
                        .font(.footnote)
                }
                
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
