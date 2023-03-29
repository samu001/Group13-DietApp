//
//  ContentView.swift
//  Group13-DietApp
//
//  Created by Harry Hocker on 3/24/23.
//

import SwiftUI

// urlBase + urlAPI + diet + diet_parameter + resultNumber + integer



struct ContentView: View {
    
    var body: some View {
        VStack {
            DietListView(diets: DietModel.array)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
