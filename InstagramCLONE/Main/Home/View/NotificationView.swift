//
//  NotificationView.swift
//  InstagramCLONE
//
//  Created by Mert ATK on 8.07.2023.
//

import SwiftUI

struct NotificationView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationStack{
        ScrollView{
                VStack{
                    Follow()
                    Divider()
                    Text("Bu hafta")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal,22)
                        .padding(.vertical,10)
                    
                    HStack{
                        Image("Pp")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                            .clipped()
                        Spacer()
                            .frame(width:20)
                        HStack(alignment:.top){
                            Text("mertatk")
                                .bold()
                            +
                            Text(" seni takip etmek istiyor")
                                
                        }
                            Spacer()
                        
                        Button{
                            
                        }label:{
                            Text("Onayla")
                                .padding(12)
                                .frame(width: 70, height: 35)
                                .background(Color(.systemBlue))
                                .cornerRadius(10)
                                .foregroundColor(.white)
                                .font(.footnote)
                        }
                        Button{
                            
                        }label:{
                            Text("Sil")
                                .padding(12)
                                .frame(width: 60, height: 35)
                                .background(Color(.systemGray))
                                .cornerRadius(10)
                                .foregroundColor(.white)
                                .font(.footnote)
                        }
                    }.padding(.horizontal,22)
                    
                    HStack{
                        Image("Pp")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                            .clipped()
                        
                        Spacer()
                            .frame(width:20)
                        HStack(alignment:.top){
                            Text("mertatk")
                                .bold()
                            +
                            Text(" yorumunu beğendi: github.com/mertaince")
                                
                        }
                            Spacer()
                        
                        Image("Pp")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50)
                            .clipped()
                        
                        
                    }.padding(.horizontal,22)
                    Spacer()
                }.padding(.vertical,22)
                    .toolbar{
                        ToolbarItem(placement: .navigationBarLeading){
                            HStack{
                                Button{
                                    presentationMode.wrappedValue.dismiss()
                                }label:{
                                    Image(systemName: "chevron.backward")
                                }.foregroundColor(.black)
                                Text("Bildirimler")
                                    .font(.largeTitle.weight(.bold))
                                
                            }
                        }
                    }.navigationBarBackButtonHidden()
            }
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}

struct Follow: View {
    var body: some View {
        Group{
            // follow
            HStack(){
                ZStack(){
                    Image("Pp")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                        .clipped()
                        .offset(x: -7, y: -7)
                    Image("Pp")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                        .clipped()
                    
                }
                Spacer()
                    .frame(width:20)
                VStack(alignment: .leading){
                    Text("Takip İstekleri")
                        .bold()
                    Text("mertatk + 99 diğer")
                }
                Spacer()
                Image(systemName: "chevron.right")
                
            }.padding(.horizontal,22)
        }
    }
}
