//
//  SingleRecipeView.swift
//  Group13-DietApp
//
//  Created by Harry Hocker on 3/24/23.
//

import SwiftUI


struct SingleRecipeView: View {
    
    
    let url: String
    var recipe = defaultRecipe
    @Environment(\.colorScheme) var colorScheme
    @ObservedObject var api = recipeAPI(api:"")
    
    init(url: String) {
        self.url = url
        self.api = recipeAPI(api: url)
    }
    
    var body: some View {
        
        ZStack {
            ScrollView{
                VStack {
                    AsyncImage(url: URL(string: api.results.image ),
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
                    
                    Text(api.results.title).padding(.horizontal)
                    
                }
                .navigationTitle(api.results.title).navigationBarTitleDisplayMode(.inline).padding()
            }
            }
            .background(
                AsyncImage(url: URL(string: recipe.image))
                    .blur(radius: 100)
                    .brightness(colorScheme == .light ? 0.5 : -0.2)

            )
            .task {
                await api.loadData()
            }
    }
}

struct SingleRecipeView_Previews: PreviewProvider {
    static var previews: some View {
         SingleRecipeView(url: "https://api.spoonacular.com/recipes/716429/information?apiKey=d0cdfe10172549139f290c322a14702f&includeNutrition=false")
    }
}


func ingredientBox(_ ingredients: [String]) -> some View {
    return
        VStack {
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
