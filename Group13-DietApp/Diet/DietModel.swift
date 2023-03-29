//
//  DietAPI.swift
//  Group13-DietApp
//
//  Created by Harry Hocker on 3/24/23.
//
import SwiftUI

let urlBase = "https://api.spoonacular.com/recipes/complexSearch"
let urlAPI = "?apiKey=d0cdfe10172549139f290c322a14702f"
let urlDiet = "&diet=" // ketogenic, etc
let urlResult = "&number=" // 10 for 10 recipes, etc


struct DietModel: Codable {
    let type: String
    
    let title: String
    let description: String
    let image: String
    let url: String
}

// put static diets in this array if we do not need them from an API
extension DietModel {
    static var array: [DietModel] = [
        DietModel(
            type: "gluten-free",
            title: "Gluten-Free",
            description: "Eliminating gluten means avoiding wheat, barley, rye, and other gluten-containing grains and foods made from them (or that may have been cross contaminated).",
            image: "gluten-free",
            url: urlBase + urlAPI + urlDiet + "gluten-free" + urlResult + "10"),
        DietModel(
            type: "ketogenic",
            title: "Ketogenic",
            description: "The keto diet is based more on the ratio of fat, protein, and carbs in the diet rather than specific ingredients.",
            image: "ketogenic",
            url: urlBase + urlAPI + urlDiet + "ketogenic" + urlResult + "10"
        ),
        DietModel(
            type: "vegetarian",
            title: "Vegetarian",
            description: "No ingredients may contain meat or meat by-products, such as bones or gelatin.",
            image: "keto.png",
            url: urlBase + urlAPI + urlDiet + "ketogenic" + urlResult + "10"
        )
        
    ]
}


