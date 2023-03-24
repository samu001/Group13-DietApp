//
//  DietView.swift
//  Group13-DietApp
//
//  Created by Harry Hocker on 3/24/23.
//

import SwiftUI

struct DietView: View {
    let diets: [JSONDietResult.Diet]
    var body: some View {
        NavigationView {
            List {
                ForEach(diets, id: \.id) { diet in
                    // DietCell(diet: diet)
                }
            }
            .listStyle(.inset)
            .navigationTitle("Diets")
        }
    }
}

struct DietView_Previews: PreviewProvider {
    static var previews: some View {
        DietView(diets: JSONDietResult.Diet.exampleDiets)
    }
}

