//
//  SingleRecipeView.swift
//  Group13-DietApp
//
//  Created by Harry Hocker on 3/24/23.
//

import SwiftUI
import UIKit
import WebKit

struct SingleRecipeView: View {
    
    let url: String
    @ObservedObject var api = recipeAPI(api: "")
    @Environment(\.colorScheme) var colorScheme
    
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
                    
                    Text("Ready in: " + api.results.readyInMinutes.description + " minutes")
                    Text("Servings: " + api.results.servings.description)
                    Spacer()
                    Text(api.results.summary).padding(.horizontal)
                    Spacer().padding()
                    VStack {
                        Link("Link to recipe", destination: URL(string: api.results.sourceUrl) ?? URL(string:"https://www.google.com")! )
                            .foregroundColor(.blue)
                    }
                    .padding()
                    .background()
                    .cornerRadius(16)
                    .shadow(radius: 8)
                        
                }
                .navigationTitle(api.results.title).navigationBarTitleDisplayMode(.inline).padding()
            }
        }
        .background(
            AsyncImage(url: URL(string: api.results.image))
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
        SingleRecipeView(url: "")
    }
}


// currently unused due to complex nature of API
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
