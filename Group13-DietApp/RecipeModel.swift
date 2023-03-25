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
        let ingredients: [String]
        let instructions: String
    }
}



// test data for non-API scene building
extension JSONRecipeResult.Recipe {
    
    static var exampleRecipes: [JSONRecipeResult.Recipe] = [
        JSONRecipeResult.Recipe(
            id: 0,
            title: "Super Cookies",
            description: "These cookies will blow you away! You'll never want to give them up!",
            imageURL:
                "https://www.enisa.europa.eu/news/enisa-news/2018bittersweet-cookies2019-new-types-of-2018cookies2019-raise-online-security-privacy-concerns/@@images/image",
            ingredients:
                ["10 eggs", "3lbs bacon", "onion syrup", "flour"],
            instructions: "Take the 10 eggs and put them in a bowl. Set the bowl outside. Then, eat the 3lbs of bacon raw. After 24 hours, use whatever is left and try to guess what you need to make this recipe work."
        )
    ]
}
