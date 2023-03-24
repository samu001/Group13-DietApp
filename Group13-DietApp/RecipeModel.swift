//
//  recipeAPI.swift
//  Group13-DietApp
//
//  Created by Harry Hocker on 3/24/23.
//

struct JSONRecipeResult: Codable {
    
    let page: Int
    let results: [Recipe]
    
    struct Recipe: Codable {
        let id: Int
        let title: String
        let description: String
    }
}



// test data for non-API scene building
extension JSONRecipeResult.Recipe {
    
    static var exampleRecipes: [JSONRecipeResult.Recipe] = [
        JSONRecipeResult.Recipe(
            id: 0,
            title: "Super Cookies",
            description: "These cookies will blow you away! You'll never want to give them up!"
        )
    ]
}
