//
//  DetailsView.swift
//  FavoriteBook
//
//  Created by Beste Kocaoglu on 23.06.2023.
//

import SwiftUI

struct DetailsView: View {
    
    var chosenFavoriteElements : FavoriteElements
    
    var body: some View {
        VStack{
            Image(chosenFavoriteElements.imagename)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(chosenFavoriteElements.name )
                .font(.largeTitle)
                .padding()
            
            Text(chosenFavoriteElements.description)
                
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(chosenFavoriteElements: batman)
    }
}
