//
//  SingleRecipeView.swift
//  Group13-DietApp
//
//  Created by Harry Hocker on 3/24/23.
//

import SwiftUI

struct SingleRecipeView: View {
    
    let recipe: JSONRecipeResult.Recipe
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        ZStack {
            ScrollView{
                VStack {
                    AsyncImage(url: URL(string: recipe.imageURL),
                               content: { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: .greatestFiniteMagnitude)
                            .padding(.horizontal)
                    },
                               placeholder: {
                        ProgressView(){
                            Image("placeholder-image")
                                .resizable()
                                .scaledToFit()
                                .background()
                        } .progressViewStyle(.linear)
                    }
                    )
                    HStack(alignment: .top) {
                        Text(recipe.description).padding(.horizontal)
                    }
                }
                .navigationTitle(recipe.title).navigationBarTitleDisplayMode(.inline).padding()
            }
            }
            .background(
                AsyncImage(url: URL(string: recipe.imageURL))
                    .blur(radius: 100)
                    .brightness(colorScheme == .light ? 0.5 : -0.2)

            )
    }
}

struct SingleRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        SingleRecipeView(recipe: JSONRecipeResult.Recipe.exampleRecipes[0])
    }
}
