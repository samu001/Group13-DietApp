//
//  recipeAPI.swift
//  Group13-DietApp
//
//  Created by Harry Hocker on 3/24/23.
//

struct RecipeListModel: Codable {
    let results: [MiniRecipeModel]
}

struct MiniRecipeModel: Codable {
    let id: Int
    let title: String
    let image: String
}

struct RecipeModel: Codable {
    let results: [Recipe]
}

struct Recipe: Codable {
    let id: Int
    let title: String
    let image: String
    var summary: String
    
    let readyInMinutes: Int
    let servings: Int
    
    let sourceUrl: String
}

struct EdamamAPI {
    
    struct Recipe: Codable {
        let label: String
        let image: String
        let url: String
        let yield: Double
        let ingredients: [Ingredient]
        let calories: Double
        let totalTime: Double
    }

    struct Ingredient: Codable {
        let text: String
        let weight: Double
    }

    struct EdamamResponse: Codable {
        let hits: [Hit]
    }

    struct Hit: Codable {
        let recipe: Recipe
    }
    
}

// These are for TESTING purposes only. 

let exampleRecipes: [Recipe] = [
    Recipe(id: 716429,
           title: "Pasta with Garlic, Scallions, Cauliflower & Breadcrumbs",
           image: "https://spoonacular.com/recipeImages/716429-556x370.jpg",
           summary: "Pasta with Garlic, Scallions, Cauliflower & Breadcrumbs might be a good recipe to expand your main course repertoire.",
           
           readyInMinutes: 45,
           servings: 2,
           
           sourceUrl: "http://fullbellysisters.blogspot.com/2012/06/pasta-with-garlic-scallions-cauliflower.html"
          ),
    Recipe(id: 716430,
           title: "Pasta with Garlic, Scallions, Cauliflower & Breadcrumbs",
           image: "https://spoonacular.com/recipeImages/716429-556x370.jpg",
           summary: "Pasta with Garlic, Scallions, Cauliflower & Breadcrumbs might be a good recipe to expand your main course repertoire.",
           
           readyInMinutes: 45,
           servings: 2,
           
           sourceUrl: "http://fullbellysisters.blogspot.com/2012/06/pasta-with-garlic-scallions-cauliflower.html"
          ),
    Recipe(id: 716431,
           title: "Pasta with Garlic, Scallions, Cauliflower & Breadcrumbs",
           image: "https://spoonacular.com/recipeImages/716429-556x370.jpg",
           summary: "Pasta with Garlic, Scallions, Cauliflower & Breadcrumbs might be a good recipe to expand your main course repertoire.",
           
           readyInMinutes: 45,
           servings: 2,
           
           sourceUrl: "http://fullbellysisters.blogspot.com/2012/06/pasta-with-garlic-scallions-cauliflower.html"
          ),
    Recipe(id: 716432,
           title: "Pasta with Garlic, Scallions, Cauliflower & Breadcrumbs",
           image: "https://spoonacular.com/recipeImages/716429-556x370.jpg",
           summary: "Pasta with Garlic, Scallions, Cauliflower & Breadcrumbs might be a good recipe to expand your main course repertoire.",
           
           readyInMinutes: 45,
           servings: 2,
           
           sourceUrl: "http://fullbellysisters.blogspot.com/2012/06/pasta-with-garlic-scallions-cauliflower.html"
          ),
]


let exampleMiniRecipes: [MiniRecipeModel] = [
    MiniRecipeModel(
        id: 716429,
        title: "Pasta with Garlic, Scallions, Cauliflower & Breadcrumbs",
        image: "https://spoonacular.com/recipeImages/716429-556x370.jpg"
    ),
    MiniRecipeModel(
        id: 716430,
        title: "Pasta with Garlic, Scallions, Cauliflower & Breadcrumbs",
        image: "https://spoonacular.com/recipeImages/716429-556x370.jpg"
    ),
    MiniRecipeModel(
        id: 716431,
        title: "Pasta with Garlic, Scallions, Cauliflower & Breadcrumbs",
        image: "https://spoonacular.com/recipeImages/716429-556x370.jpg"
    ),
    MiniRecipeModel(
        id: 716432,
        title: "Pasta with Garlic, Scallions, Cauliflower & Breadcrumbs",
        image: "https://spoonacular.com/recipeImages/716429-556x370.jpg"
    )
]
