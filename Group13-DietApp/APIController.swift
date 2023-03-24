//
//  APIController.swift
//  Group13-DietApp
//
//  Created by Harry Hocker on 3/24/23.
//

import Foundation

class recipeAPI: ObservableObject {
    
    @Published var results = [JSONRecipeResult.Recipe]()
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
            
            if let decodedResponse = try? JSONDecoder().decode(JSONRecipeResult.self, from: data) {
                results = decodedResponse.results
            }
        } catch {
            print("Invalid data")
        }
    }
}

