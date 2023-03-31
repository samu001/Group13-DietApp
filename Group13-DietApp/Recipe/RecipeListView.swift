//
//  RecipeListView.swift
//  Group13-DietApp
//
//  Created by Harry Hocker on 3/24/23.
//

import SwiftUI

struct RecipeListView: View {
    
    let diet: String
    let recipes: [MiniRecipeModel]
    var body: some View {
            List {
                ForEach(recipes, id: \.id) { recipe in
                    RecipeCell(recipe: recipe)
                }
            }
        .navigationTitle(diet + " Recipes")
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView(diet: "Dietname", recipes: exampleMiniRecipes)
    }
}
