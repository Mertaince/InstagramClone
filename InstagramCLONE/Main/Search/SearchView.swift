//
//  SearchView.swift
//  InstagramCLONE
//
//  Created by Mert ATK on 8.07.2023.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack{
            
        }.searchable(text: $searchText, prompt: "Ara")
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
