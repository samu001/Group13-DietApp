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
        let imageURL: String
    }
}



// test data for non-API scene building
extension JSONRecipeResult.Recipe {
    
    static var exampleRecipes: [JSONRecipeResult.Recipe] = [
        JSONRecipeResult.Recipe(
            id: 0,
            title: "Super Cookies",
            description: "These cookies will blow you away! You'll never want to give them up!",
            imageURL: "https://www.enisa.europa.eu/news/enisa-news/2018bittersweet-cookies2019-new-types-of-2018cookies2019-raise-online-security-privacy-concerns/@@images/image"
        )
    ]
}
