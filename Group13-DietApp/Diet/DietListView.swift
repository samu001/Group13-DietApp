//
//  DietView.swift
//  Group13-DietApp
//
//  Created by Harry Hocker on 3/24/23.
//

import SwiftUI

struct DietListView: View {
    let diets: [DietModel]
    var body: some View {
        NavigationView {
            List {
                ForEach(diets, id: \.id) { diet in
                    DietCellModel(model: diet)
                }
            }
            .listStyle(.inset)
            .navigationTitle("Diets")
        }
    }
} // comment

struct DietListView_Previews: PreviewProvider {
    static var previews: some View {
        DietListView(diets: DietModel.array)
    }
}

