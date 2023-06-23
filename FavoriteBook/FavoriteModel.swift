//
//  FavoriteModel.swift
//  FavoriteBook
//
//  Created by Beste Kocaoglu on 22.06.2023.
//

import Foundation

struct FavoriteModel : Identifiable {
    
    var id = UUID()
    var title : String
    var elements : [FavoriteElements]
    
}

struct FavoriteElements : Identifiable {
    
    var id = UUID()
    var name : String
    var imagename : String
    var description : String
    
}
// Bands
let metallica = FavoriteElements(name: "Metallica", imagename: "metallica", description: "Number one Music Band")
let megadeth = FavoriteElements(name: "Megadeth", imagename: "megadeth2", description: "Number two Music Band")
let ironmaiden = FavoriteElements(name: "Iron Maiden", imagename: "ironmaiden", description: "Number three Music Band")


let favoriteBands = FavoriteModel(title: "Favorite Bands", elements: [metallica,megadeth,ironmaiden])
 
//Movies

let batman = FavoriteElements(name: "Batman", imagename: "batman2", description: "Number one Movie")
let ironman = FavoriteElements(name: "Iron man", imagename: "ironman", description: "Number two Movie")
let hulk = FavoriteElements(name: "Hulk", imagename: "hulk", description: "Number three Movie")


let favoriteMovies = FavoriteModel(title: "Favorite Movies", elements: [batman,ironman,hulk])

let myFavorites = [favoriteBands,favoriteMovies]
