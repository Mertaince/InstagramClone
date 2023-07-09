//
//  TabBarView.swift
//  InstagramCLONE
//
//  Created by Mert ATK on 9.07.2023.
//

import SwiftUI

struct TabBarView: View {
    @State private var selectionIndex = 0
    var body: some View {
        TabView(selection: $selectionIndex){
            HomeView()
                .onAppear(){
                    selectionIndex = 0
                }.tabItem(){
                    Image(systemName: "house")
                }.tag(0)
            
            SearchView()
                .onAppear(){
                    selectionIndex = 1
                }.tabItem(){
                    Image(systemName: "magnifyingglass.circle")
                }.tag(1)
            
            PlusView()
                .onAppear(){
                    selectionIndex = 2
                }.tabItem(){
                    Image(systemName: "plus.app")
                }.tag(2)
            
            ReelsView()
                .onAppear(){
                    selectionIndex = 3
                }.tabItem(){
                    Image(systemName: "play.square")
                }.tag(3)
            
            ProfilView()
                .onAppear(){
                    selectionIndex = 4
                }.tabItem(){
                    Image(systemName: "person.circle")
                }.tag(4)
            
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
