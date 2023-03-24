//
//  ContentView.swift
//  Group13-DietApp
//
//  Created by Harry Hocker on 3/24/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        DietListView(diets: DietModel.staticDiets.array)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
