//
//  DietAPI.swift
//  Group13-DietApp
//
//  Created by Harry Hocker on 3/24/23.
//

struct JSONDietResult: Codable {
    
    let page: Int
    let results: [Diet]
    
    struct Diet: Codable {
        let id: Int
        let title: String
        let description: String
    }
}



// test data for non-API scene building
extension JSONDietResult.Diet {
    static var exampleDiets: [JSONDietResult.Diet] = [
        JSONDietResult.Diet(
            id: 0,
            title: "Keto",
            description: "Hate carbs? Carbs hate you too! The keto diet is a fun way to lose weight FAST."
        )
    ]
}
