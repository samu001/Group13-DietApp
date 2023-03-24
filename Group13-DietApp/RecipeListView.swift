//
//  RecipeListView.swift
//  Group13-DietApp
//
//  Created by Harry Hocker on 3/24/23.
//

import SwiftUI

struct RecipeListView: View {
    let recipes: [JSONRecipeResult.Recipe]
    var body: some View {
        NavigationView {
            List {
                ForEach(recipes, id: \.id) { recipe in
                   // RecipeCell(recipe: recipe)
                }
            }
            .listStyle(.inset)
            .navigationTitle("Recipes")
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView(recipes: JSONRecipeResult.Recipe.exampleRecipes)
    }
}
