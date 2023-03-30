//
//  DietAPI.swift
//  Group13-DietApp
//
//  Created by Harry Hocker on 3/24/23.
//
import SwiftUI

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
            url: urlBase + urlAPI + urlDiet + "gluten-free" + urlResult
        ),
        DietModel(
            type: "ketogenic",
            title: "Ketogenic",
            description: "The keto diet is based more on the ratio of fat, protein, and carbs in the diet rather than specific ingredients.",
            image: "ketogenic",
            url: urlBase + urlAPI + urlDiet + "ketogenic" + urlResult
        ),
        DietModel(
            type: "vegetarian",
            title: "Vegetarian",
            description: "No ingredients may contain meat or meat by-products, such as bones or gelatin.",
            image: "vegetarian",
            url: urlBase + urlAPI + urlDiet + "vegetarian" + urlResult
        ),
        DietModel(
            type: "lacto-vegetarian",
            title: "Lacto-Vegetarian",
            description: "All ingredients must be vegetarian and none of the ingredients can be or contain egg.",
            image: "lacto-vegetarian",
            url: urlBase + urlAPI + urlDiet + "lacto-vegetarian" + urlResult
        ),
        DietModel(
            type: "ovo-vegetarian",
            title: "Ovo-Vegetarian",
            description: "All ingredients must be vegetarian and none of the ingredients can be or contain dairy.",
            image: "ovo-vegetarian",
            url: urlBase + urlAPI + urlDiet + "lacto-vegetarian" + urlResult
        ),
        DietModel(
            type: "vegan",
            title: "Vegan",
            description: "No ingredients may contain meat or meat by-products, such as bones or gelatin, nor may they contain eggs, dairy, or honey.",
            image: "vegan",
            url: urlBase + urlAPI + urlDiet + "vegan" + urlResult
        ),
        DietModel(
            type: "pescetarian",
            title: "Pescetarian",
            description: "Everything is allowed except meat and meat by-products - some pescetarians eat eggs and dairy, some do not.",
            image: "pescetarian",
            url: urlBase + urlAPI + urlDiet + "pescetarian" + urlResult
        ),
        DietModel(
            type: "primal",
            title: "Primal",
            description: "Very similar to Paleo, except dairy is allowed - think raw and full fat milk, butter, ghee, etc.",
            image: "primal",
            url: urlBase + urlAPI + urlDiet + "primal" + urlResult
        ),
        DietModel(
            type: "low-fodmap",
            title: "Low FODMAP",
            description: "FODMAP stands for 'fermentable oligo-, di-, mono-saccharides and polyols'. Our ontology knows which foods are considered high in these types of carbohydrates.",
            image: "low-fodmap",
            url: urlBase + urlAPI + urlDiet + "low-fodmap" + urlResult
        ),
        DietModel(
            type: "whole30",
            title: "Whole30",
            description: "Allowed ingredients include meat, fish/seafood, eggs, vegetables, fresh fruit, coconut oil, olive oil, small amounts of dried fruit and nuts/seeds. Ingredients not allowed include added sweeteners, dairy, alcohol, grains, legumes, and food additives, such as carrageenan, MSG, and sulfites.",
            image: "whole30",
            url: urlBase + urlAPI + urlDiet + "whole30" + urlResult
        ),
        
        
    ]
}


