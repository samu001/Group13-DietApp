//
//  DietCellModel.swift
//  Group13-DietApp
//
//  Created by Harry Hocker on 3/28/23.
//

import SwiftUI

struct DietCellModel: View {
    
    let model: DietModel
    @ObservedObject var recipes = recipeListAPI(api:"")
    
    init(model: DietModel) {
        self.model = model
        self.recipes = recipeListAPI(api: model.url)
    }
    
    var body: some View {
        NavigationLink {
            RecipeListView(diet: model.title, recipes: recipes.results)
        } label: {
            VStack {
                Text(model.title)
                    .foregroundColor(.black)
                    .font(.title).bold()
                
                Image(model.image)
                    .resizable()
                    .scaledToFit()
                
                Text(model.description)
                    .foregroundColor(.black)
            }
            .padding()
        }.task {
            await recipes.loadData()
        }
        
    }
}

struct DietCellModel_Previews: PreviewProvider {
    static var previews: some View {
        DietCellModel(model: DietModel.array[0])
    }
}
