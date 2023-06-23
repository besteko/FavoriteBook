//
//  ContentView.swift
//  FavoriteBook
//
//  Created by Beste Kocaoglu on 22.06.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        NavigationView {
            
            List {
                ForEach(myFavorites){ favorite in
                    Section {
                        ForEach(favorite.elements){ element in
                            
                            NavigationLink( destination: DetailsView(chosenFavoriteElements: element)) {
                                Text(element.name)
                            }
                            
                            
                        }
                    } header: {
                        Text(favorite.title)
                    }
                    
                    
                }
            }.navigationBarTitle(Text("Favorite Book"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
