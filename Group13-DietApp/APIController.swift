//
//  APIController.swift
//  Group13-DietApp
//
//  Created by Harry Hocker on 3/24/23.
//

import Foundation


let defaultRecipe: Recipe = Recipe(
    id: 0,
    title: "",
    image: "",
    summary: "",
    readyInMinutes: 0,
    servings: 0,
    sourceUrl: "")

@MainActor class recipeAPI: ObservableObject {
    
    @Published var results = defaultRecipe
    var url: String!
    
    init(api: String) {
        url = api
    }
    
    func loadData() async {
        guard let url = URL(string: url) else {
            print("Invalid URL")
            return
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            if let decodedResponse = try? JSONDecoder().decode(Recipe.self, from: data) {
                results = decodedResponse
                // remove the HTML syntax that the API returns
                results.summary = results.summary.replacingOccurrences(of: "<b>", with: "")
                results.summary = results.summary.replacingOccurrences(of: "</b>", with: "")
            }
        } catch {
            print("Invalid data")
        }
    }
}


@MainActor class recipeListAPI: ObservableObject {
    
    @Published var results = [MiniRecipeModel]()
    var url: String!
    
    init(api: String) {
        url = api
    }
    
    func loadData() async {
        guard let url = URL(string: url) else {
            print("Invalid URL")
            return
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            if let decodedResponse = try? JSONDecoder().decode(RecipeListModel.self, from: data) {
                results = decodedResponse.results
            }
        } catch {
            print("Invalid data")
        }
    }
}

