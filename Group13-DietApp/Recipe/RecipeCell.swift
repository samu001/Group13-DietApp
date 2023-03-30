//
//  RecipeCell.swift
//  Group13-DietApp
//
//  Created by Harry Hocker on 3/24/23.
//

import SwiftUI

struct RecipeCell: View {
    
    let miniRecipe: MiniRecipeModel
    
    @ObservedObject var api = recipeAPI(api: "")
    
    init(recipe: MiniRecipeModel) {
        self.miniRecipe = recipe
        self.api = recipeAPI(api: "https://api.spoonacular.com/recipes/" + miniRecipe.id.description + "/information?apiKey=d0cdfe10172549139f290c322a14702f&includeNutrition=false")
    }
    
    var body: some View {
        
        NavigationLink {
            SingleRecipeView(recipe: api.results)
        } label: {
            HStack {
                AsyncImage(url: URL(string: miniRecipe.image), content:
                            { image in image.resizable()
                        .scaledToFit()
                        .frame(maxWidth: 120)
                },
                           placeholder: {
                    ProgressView(){
                        
                    } .progressViewStyle(.circular).frame(maxWidth: 100)
                })
                .cornerRadius(16)
                
                VStack (alignment: .leading, spacing: 8) {
                    Text(miniRecipe.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.primary)
                        .multilineTextAlignment(.leading)
                        .lineLimit(3)
                }
                .frame(maxWidth: .infinity)
            }
        }.task {
            await api.loadData()
        }
    }
}

struct RecipeCell_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCell(recipe: exampleMiniRecipes[0])
    }
}
