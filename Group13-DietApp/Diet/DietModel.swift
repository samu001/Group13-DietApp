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
            type: "ketogenic",
            title: "Keto",
            description: "Hate carbs? Carbs hate you too! The keto diet is a fun way to lose weight FAST.",
            image: "keto.png",
            url: "https://api.spoonacular.com/recipes/complexSearch?apiKey=d0cdfe10172549139f290c322a14702f&diet=ketogenic&number=10"
        ),
        DietModel(
            type: "not-keto",
            title: "Not Keto",
            description: "Love carbs? Carbs love you too! The non-keto diet is a fun way to gain weight FAST.",
            image: "not-keto.png",
            url: urlBase + urlAPI + urlDiet + "ketogenic" + urlResult + "10"
        )
    ]
}

