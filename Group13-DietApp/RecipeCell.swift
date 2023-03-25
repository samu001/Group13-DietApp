//
//  RecipeCell.swift
//  Group13-DietApp
//
//  Created by Harry Hocker on 3/24/23.
//

import SwiftUI

struct RecipeCell: View {
    let recipe: JSONRecipeResult.Recipe
    
    var body: some View {
        
        NavigationLink {
            SingleRecipeView(recipe: recipe)
        } label: {
            HStack {
                AsyncImage(url: URL(string: recipe.imageURL), content:
                { image in image.resizable()
                        .scaledToFit()
                        .frame(maxWidth: 100)
                },
                           placeholder: {
                    ProgressView(){
                        Text("loading...")
                    } .progressViewStyle(.circular).frame(maxWidth: 100)
                })
                .frame(height: 120.0)
                .padding(.zero)
                
                VStack (alignment: .leading, spacing: 8) {
                    Text(recipe.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.primary)
                        .multilineTextAlignment(.leading)
                        .lineLimit(1)
                    Text(recipe.description)
                        .font(.body)
                        .foregroundColor(Color.secondary)
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
        RecipeCell(recipe: JSONRecipeResult.Recipe.exampleRecipes[0])
    }
}
