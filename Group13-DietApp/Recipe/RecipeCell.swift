//
//  RecipeCell.swift
//  Group13-DietApp
//
//  Created by Harry Hocker on 3/24/23.
//

import SwiftUI

struct RecipeCell: View {
    let recipe: MiniRecipeModel
    
    let urlBase = "https://api.spoonacular.com/recipes/"
    let urlEnd = "/information?apiKey=d0cdfe10172549139f290c322a14702f&includeNutrition=false"
    
    var body: some View {
        
        NavigationLink {
            SingleRecipeView(url: urlBase + recipe.id.description + urlEnd)
        } label: {
            HStack {
                AsyncImage(url: URL(string: recipe.image), content:
                { image in image.resizable()
                        .scaledToFit()
                        .frame(maxWidth: 100)
                },
                           placeholder: {
                    ProgressView(){
                        Text("loading...")
                    } .progressViewStyle(.circular).frame(maxWidth: 100)
                })
                .padding(.zero)
                
                VStack (alignment: .leading, spacing: 8) {
                    Text(recipe.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.primary)
                        .multilineTextAlignment(.leading)
                        .lineLimit(3)
                }
                .frame(maxWidth: .infinity)
            }
        }
    }
}

struct RecipeCell_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCell(recipe: exampleMiniRecipes[0])
    }
}
