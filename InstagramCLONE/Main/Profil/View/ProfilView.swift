//
//  ProfilView.swift
//  InstagramCLONE
//
//  Created by Mert ATK on 5.07.2023.
//

import SwiftUI

struct ProfilView: View {
    @State private var selectButton = 0
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        VStack{
            header()
            
            Pp()
            
            Username()
            
            Story()
            
            HStack{
                Button{
                    self.selectButton = 0
                }label:{
                    Image(systemName: "square.grid.3x3")
                        .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                }
                
                Spacer()
                Button{
                    self.selectButton = 1
                }label:{
                    Image(systemName: "play.display")
                        .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                }
                
                Spacer()
                Button{
                    self.selectButton = 2
                }label:{
                    Image(systemName: "person.crop.square")
                        .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                }
                
            }.padding(.horizontal,52)
            Divider()
            
            if selectButton == 0{
                fotograflar()
            } else if selectButton == 1{
                reels()
            } else if selectButton == 2{
                etiket()
            }
            
            
            Spacer()
        }
    }
}

struct fotograflar: View{
    let photos = ["Pp","Pp 1"]
    var body: some View{
        ScrollView{
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3)){
                ForEach(photos, id: \.self) { photo in
                    Image(photo)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.width / 3 + 1)
                }
            }
        }
    }
}

struct reels: View{
    var body: some View{
        Text("denemereels")
    }
}

struct etiket: View{
    var body: some View{
        VStack(alignment: .center){
            Spacer()
                .frame(height: 30)
            Image(systemName: "person.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70, height: 70)
            
            
            Text("Etiketlendigin Fotoğraflar ve Videolar")
                .multilineTextAlignment(.center)
                .bold()
                .font(.system(size: 25))
                .padding(10)
            
            Text("İnsanlar seni fotoğraf ve videolarda etkitlediğinde, burada görünecek.")
                .font(.system(size: 15))
                .multilineTextAlignment(.leading)
                
            
                
        }.padding(.horizontal, 30)
    }
}

struct ProfilView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilView()
    }
}

struct header: View {
    @State var sheet = false
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        Group{
            //Header
            HStack{
                Image(systemName: "lock")
                Text("mertatk")
                    .bold()
                    .font(.system(size:25))
                Spacer()
                Image(systemName: "plus.app")
                Button{
                    sheet.toggle()
                }label:{
                    Image(systemName: "line.3.horizontal")
                        .foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                    
                }.sheet(isPresented: $sheet){
                    
                } content:{
                    LineView()
                }
                
            }.padding(.horizontal,20)
        }
    }
}

struct Pp: View {
    var body: some View {
        Group{
            //Pp ve istatistik
            HStack{
                ZStack{
                    Image("Pp")
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
                Spacer()
                VStack{
                    Text("15")
                    Text("Gönderi")
                }
                VStack{
                    Text("11")
                    Text("Takipçi")
                }.padding(.horizontal,20)
                VStack{
                    Text("20")
                    Text("Takip")
                }
                Spacer()
            }.padding(.horizontal,20)
        }
    }
}

struct Username: View {
    var body: some View {
        Group{
            Text("mertatk")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal,25)
                .bold()
            
            Text("github/mertaince")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal,25)
            
            
            
            HStack{
                Button{
                    
                }label:{
                    Text("Düzenle")
                        .padding(12)
                        .frame(width: 170, height: 40)
                        .background(Color(.systemGray))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                }
                
                Button{
                    
                }label:{
                    Text("Profili paylaş")
                        .padding(12)
                        .frame(width: 170, height: 40)
                        .background(Color(.systemGray))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                }
                
                
            }.padding(.horizontal,10)
        }
    }
}

struct Story: View {
    var body: some View {
        Group{
            //Story
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    VStack{
                        Image("Pp")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(.gray,lineWidth: 2)
                                    .frame(width: 150, height: 70)
                                
                            )
                        Text("<3")
                    }.padding(.horizontal,14)
                    
                    VStack{
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(.gray,lineWidth: 2)
                                    .frame(width: 150, height: 70)
                            )
                        Text("Yeni")
                    }
                }.padding(.vertical,12)
                    .padding(.horizontal,22)
            }
        }
    }
}
