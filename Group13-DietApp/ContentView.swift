//
//  ContentView.swift
//  Group13-DietApp
//
//  Created by Harry Hocker on 3/24/23.
//

import SwiftUI

// urlBase + urlAPI + diet + diet_parameter + resultNumber + integer

let urlBase = "https://api.spoonacular.com/recipes/complexSearch"
let urlAPI = "?apiKey=9f9874c4519949798c78d38210fba603"
let urlDiet = "&diet=" // ketogenic, etc
let urlResult = "&number=5" // 5 for 5 recipes; set due to API limitation

let urlSingle = "https://api.spoonacular.com/recipes/"
let urlNutritionInfo = "&includeNutrition=false"

struct ContentView: View {
    
    var body: some View {
        VStack {
            DietListView(diets: DietModel.array)
        }
    }
}
