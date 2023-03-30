//
//  DietCellModel.swift
//  Group13-DietApp
//
//  Created by Harry Hocker on 3/28/23.
//

import SwiftUI

struct DietCellModel: View {
    
    let model: DietModel
    @ObservedObject var api = recipeListAPI(api:"")
    
    init(model: DietModel) {
        self.model = model
        self.api = recipeListAPI(api: model.url)
    }
    
    var body: some View {
        NavigationLink {
            RecipeListView(diet: model.title, recipes: api.results)
        } label: {
            VStack {
                Text(model.title)
                    .foregroundColor(.black)
                    .font(.title).bold()
                
                Image(model.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(40)

                Text(model.description)
                    .foregroundColor(.black)
            }
            .padding()
            .background()
            .cornerRadius(40)
            .shadow(radius: 10)
            
        }.task {
            await api.loadData()
        }
        
    }
}

struct DietCellModel_Previews: PreviewProvider {
    static var previews: some View {
        DietCellModel(model: DietModel.array[0])
    }
}
