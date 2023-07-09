//
//  LineView.swift
//  InstagramCLONE
//
//  Created by Mert ATK on 8.07.2023.
//

import SwiftUI

struct LineView: View {
    var body: some View {
        VStack{
            Group{
                Capsule()
                    .frame(width: 50, height: 5)
                    .padding(10)
                HStack{
                    Image(systemName: "gear")
                        .resizable()
                        .frame(width: 25, height: 25)
                    Text("Ayarlar ve gizlilik")
                        .font(.system(size:22))
                    Spacer()
                }.padding(.horizontal,22)
                    .padding(.vertical,10)
                Divider()
            }
            
            Group{
                HStack{
                    Image(systemName: "seal")
                        .resizable()
                        .frame(width: 25, height: 25)
                    Text("Threads")
                        .font(.system(size:22))
                    Spacer()
                    Text("YENİ")
                        .font(.system(size:22))
                        .frame(width: 60, height: 30)
                        .background(.blue)
                        .cornerRadius(15)
                    
                }.padding(.horizontal,22)
                    .padding(.vertical,10)
                Divider()
            }
            
            Group{
                HStack{
                    Image(systemName: "clock")
                        .resizable()
                        .frame(width: 25, height: 25)
                    Text("Hareketlerin")
                        .font(.system(size:22))
                    Spacer()
                }.padding(.horizontal,22)
                    .padding(.vertical,10)
                Divider()
            }
            Group{
                HStack{
                    Image(systemName: "clock.arrow.circlepath")
                        .resizable()
                        .frame(width: 25, height: 25)
                    Text("Arşiv")
                        .font(.system(size:22))
                    Spacer()
                }.padding(.horizontal,22)
                    .padding(.vertical,10)
                Divider()
            }
            
            Group{
                HStack{
                    Image(systemName: "qrcode.viewfinder")
                        .resizable()
                        .frame(width: 25, height: 25)
                    Text("QR Kodu")
                        .font(.system(size:22))
                    Spacer()
                }.padding(.horizontal,22)
                    .padding(.vertical,10)
                Divider()
            }
            
            Group{
                HStack{
                    Image(systemName: "bookmark")
                        .resizable()
                        .frame(width: 25, height: 25)
                    Text("Kaydedildi")
                        .font(.system(size:22))
                    Spacer()
                }.padding(.horizontal,22)
                    .padding(.vertical,10)
                Divider()
            }
            
            Group{
                HStack{
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 25, height: 25)
                    Text("Gözetim")
                        .font(.system(size:22))
                    Spacer()
                }.padding(.horizontal,22)
                    .padding(.vertical,10)
                Divider()
            }
            
            Group{
                HStack{
                    Image(systemName: "line.3.horizontal")
                        .resizable()
                        .frame(width: 25, height: 25)
                    Text("Yakın Arkadaşlar")
                        .font(.system(size:22))
                    Spacer()
                }.padding(.horizontal,22)
                    .padding(.vertical,10)
                Divider()
            }
            
            Group{
                HStack{
                    Image(systemName: "star")
                        .resizable()
                        .frame(width: 25, height: 25)
                    Text("Favoriler")
                        .font(.system(size:22))
                    Spacer()
                }.padding(.horizontal,22)
                    .padding(.vertical,10)
                Divider()
            }
          
            Spacer()
        }
    }
}

struct LineView_Previews: PreviewProvider {
    static var previews: some View {
        LineView()
    }
}
