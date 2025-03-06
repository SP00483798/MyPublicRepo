//
//  DetailsView.swift
//  NewUISample
//
//  Created by 515148076 on 05/01/25.
//

import SwiftUI

struct DetailsView: View {
    var cocktail: Cocktail

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
//            Text(cocktail.name)
//                .font(.largeTitle)
//                .fontWeight(.bold)

            Text(cocktail.longDescription)
                .font(.body)
                .foregroundColor(.secondary)

//            Text(cocktail.isAlcoholic ? "Alcoholic" : "Non-Alcoholic")
//                .font(.headline)
//                .foregroundColor(cocktail.isAlcoholic ? .red : .green)

            Spacer()
        }
        .padding()
        .navigationTitle(cocktail.name)
    }
}

#Preview {
    DetailsView(cocktail: Cocktail(id: "", name: "", type: "", shortDescription: "", longDescription: "", preparationMinutes: 0, imageName: ""))
}
