//
//  HomeView.swift
//  InstagramCLONE
//
//  Created by Mert ATK on 4.07.2023.
//

import SwiftUI

struct HomeView: View {
    @Environment(\.colorScheme) private var colorScheme
    var body: some View {
        NavigationStack{
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    Header()
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            Storys(image: "Pp", username: "Hikayen")
                            OtherStory(image: "Pp", username: "mertatk")
                        }
                    }
                    Divider()
                    Post()
                }
                
            }
        }
    }
}

struct Header: View{
    @Environment(\.colorScheme) private var colorScheme
    var body: some View{
        NavigationStack{
            HStack{
                Image(colorScheme == .light ? "inslogo" : "inswhite")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 50)
                Spacer()
                NavigationLink{
                    NotificationView()
                }label:{
                    Image(systemName: "heart")
                        .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                }
                Spacer()
                    .frame(width: 15)
                NavigationLink{
                    DmView()
                }label:{
                    Image(systemName: "message")
                        .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                }
                
            }.padding(.horizontal,20)
                .padding(.vertical,3)
        }
    }
}

struct Storys: View {
    var image: String
    var username: String
    var body: some View{
        
            VStack{
                ZStack{
                    Image(image)
                        .resizable()
                        .aspectRatio( contentMode: .fill)
                        .frame(width: 90, height: 90)
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(LinearGradient(colors: [.red,.purple,.red,.orange,.yellow,.orange], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 3)
                                .frame(width: 100, height: 100)
                        )
                    Image(systemName: "plus.circle.fill")
                        .foregroundColor(Color(.systemBlue))
                        .frame(width: 70, height: 95, alignment: .bottomTrailing)
                }
                Text(username)
            }
            .padding(.horizontal,18)
            .padding(.vertical,5)
        
            }
        }

struct OtherStory: View {
    var image: String
    var username: String
    var body: some View{
        
            VStack{
                    Image(image)
                        .resizable()
                        .aspectRatio( contentMode: .fill)
                        .frame(width: 90, height: 90)
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(LinearGradient(colors: [.red,.purple,.red,.orange,.yellow,.orange], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 3)
                                .frame(width: 100, height: 100)
                        )
                Text(username)
            }
            .padding(.vertical,5)
        
            }
        }

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct Post: View {
    var body: some View {
        Group{
            HStack{
                
                Image("Pp")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                Text("mertatk")
                Spacer()
                Image(systemName:"circle.grid.2x1.fill")
                
            }.padding(.horizontal,15)
            
            Image("Pp")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:.infinity)
            
            HStack{
                Image(systemName: "heart")
                Image(systemName: "message")
                Image(systemName: "location")
                Spacer()
                Image(systemName: "bookmark")
                
            }.padding(.horizontal,15)
                .padding(.vertical,5)
            VStack(alignment: .leading){
                
                Text("15 beğenme")
                    .bold()
                Text("11 yorumun tümünü gör")
                    .foregroundColor(Color(.systemGray))
                Text("10 saat önce")
                    .foregroundColor(Color(.systemGray))
                    .font(.footnote)
                
                
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal,15)
        }
    }
}
