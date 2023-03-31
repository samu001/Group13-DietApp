//
//  RecipeCell.swift
//  Group13-DietApp
//
//  Created by Harry Hocker on 3/24/23.
//

import SwiftUI

struct RecipeCell: View {
    
    let miniRecipe: MiniRecipeModel
    var url: String = ""
    
    init(recipe: MiniRecipeModel) {
        self.miniRecipe = recipe
        self.url = urlSingle + miniRecipe.id.description + "/information" + urlAPI + urlNutritionInfo
    }
    
    var body: some View {
        
        NavigationLink {
            SingleRecipeView(url: url)
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
        }
    }
}

struct RecipeCell_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCell(recipe: exampleMiniRecipes[0])
    }
}
