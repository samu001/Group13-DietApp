//
//  DietAPI.swift
//  Group13-DietApp
//
//  Created by Harry Hocker on 3/24/23.
//

struct DietModel: Codable {
    
    let page: Int
    let results: [staticDiets]
    
    struct staticDiets: Codable {
        let id: Int
        let title: String
        let description: String
    }
}

// put static diets in this array if we do not need them from an API
extension DietModel.staticDiets {
    static var array: [DietModel.staticDiets] = [
        DietModel.staticDiets(
            id: 0,
            title: "Keto",
            description: "Hate carbs? Carbs hate you too! The keto diet is a fun way to lose weight FAST."
        )
    ]
}
