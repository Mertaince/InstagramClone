//
//  DmView.swift
//  InstagramCLONE
//
//  Created by Mert ATK on 8.07.2023.
//

import SwiftUI

struct DmView: View {
    @State private var searchable = ""
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationStack{
            VStack{
                HStack(){
                    ZStack(){
                        Image("Pp")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 90, height: 90)
                            .clipShape(Circle())
                            .clipped()
                        ZStack{
                            Circle()
                                .fill(Color(.systemGray))
                                .frame(width: 5, height: 5)
                                .offset(x: -5, y: -25)
                            Circle()
                                .fill(Color(.systemGray))
                                .frame(width: 10, height: 10)
                                .offset(x: -10, y: -35)
                            Circle()
                                .fill(Color(.systemGray))
                                .frame(width: 50, height: 40)
                                .offset(x: -25, y: -55)
                            Image(systemName: "plus")
                                .foregroundColor(Color(.systemGray6))
                                .frame(width: 50, height: 40)
                                .offset(x: -25, y: -55)
                        }
                    }
                    
                    Spacer()
                }.padding(EdgeInsets(top: 22, leading: 22, bottom: 2, trailing: 22))
                Text("Notun")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal,45)
                    .font(.footnote)
                
                
                HStack{
                    Text("Mesajlar")
                        .bold()
                    Spacer()
                    Text("İstekler")
                }.padding(.horizontal,22)
                    .padding(.vertical,5)
                
                HStack{
                    Image("Pp")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                        .clipped()
                    
                    VStack(alignment:.leading){
                        Text("mertatk")
                            .bold()
                        Text("1s önce gönderildi")
                    }
                    Spacer()
                    Image(systemName:"camera")
                }.padding(.horizontal,22)
                
                HStack{
                    Image("Pp")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                        .clipped()
                    
                    VStack(alignment:.leading){
                        Text("mertatk")
                            .bold()
                        Text("mertatk'in bir Reels videosunu gönderdi")
                            .lineLimit(1)
                    }
                    Spacer()
                    Image(systemName:"camera")
                }.padding(.horizontal,22)
                
                
                Spacer()
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    HStack{
                        Button{
                            presentationMode.wrappedValue.dismiss()
                        }label:{
                            Image(systemName: "chevron.backward")
                        }.foregroundColor(.black)
                        Text("mertatk")
                            .font(.largeTitle.weight(.bold))
                        
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Image(systemName: "square.and.pencil")
                        .bold()
                }
            }.navigationBarBackButtonHidden()
        }.searchable(text: $searchable, prompt: "Ara")
            
    }
}

struct DmView_Previews: PreviewProvider {
    static var previews: some View {
        DmView()
    }
}
