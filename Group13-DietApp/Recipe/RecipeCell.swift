//
//  RecipeCell.swift
//  Group13-DietApp
//
//  Created by Harry Hocker on 3/24/23.
//

import SwiftUI

struct RecipeCell: View {
    let recipe: MiniRecipeModel
    
    var body: some View {
        
        NavigationLink {
            SingleRecipeView(recipe: recipe)
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
                .frame(height: 120.0)
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
