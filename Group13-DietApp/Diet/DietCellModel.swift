//
//  DietCellModel.swift
//  Group13-DietApp
//
//  Created by Harry Hocker on 3/28/23.
//

import SwiftUI

struct DietCellModel: View {
    
    let model: DietModel
    
    var body: some View {
        Text(model.title)
    }
}

struct DietCellModel_Previews: PreviewProvider {
    static var previews: some View {
        DietCellModel(model: DietModel.array[0])
    }
}
