//
//  SingleRecipeView.swift
//  Group13-DietApp
//
//  Created by Harry Hocker on 3/24/23.
//

import SwiftUI


struct SingleRecipeView: View {
    
    let recipe: Recipe
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        ZStack {
            ScrollView{
                VStack {
                    AsyncImage(url: URL(string: recipe.image ),
                               content: { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: .greatestFiniteMagnitude)
                            .padding(.horizontal)
                    },
                               placeholder: {
                        ProgressView(){
                            Text("Loading Image...")
                        } .progressViewStyle(.circular)
                    }
                    )
                }
                VStack{
                    
                    Text("Ready in: " + recipe.readyInMinutes.description + " minutes")
                    Text("Servings: " + recipe.servings.description)
                    Spacer()
                    Text(recipe.summary).padding(.horizontal)
                    Spacer().padding()
                    VStack {
                        Link("Link to recipe", destination: URL(string: recipe.sourceUrl)!)
                            .foregroundColor(.blue)
                    }
                    .padding()
                    .background()
                    .cornerRadius(16)
                    .shadow(radius: 8)
                        
                }
                .navigationTitle(recipe.title).navigationBarTitleDisplayMode(.inline).padding()
            }
        }
        .background(
            AsyncImage(url: URL(string: recipe.image))
                .blur(radius: 100)
                .brightness(colorScheme == .light ? 0.5 : -0.2)
        )
        
    }
}

struct SingleRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        SingleRecipeView(recipe: exampleRecipes[0])
    }
}


func ingredientBox(_ ingredients: [String]) -> some View {
    return VStack {
        Text("Ingredients")
            .font(.title2)
        VStack{
            ForEach(ingredients, id: \.self) { string in
                Text(string)
            }
        }
        .font(.title2)
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(lineWidth: 2)
        )
    }.padding()
}
