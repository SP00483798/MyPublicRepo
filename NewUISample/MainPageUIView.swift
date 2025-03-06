//
//  MainPageUIView.swift
//  NewUISample
//
//  Created by 515148076 on 05/01/25.
//

import SwiftUI

struct MainView: View {
    @StateObject private var viewModel = CocktailViewModel()

    var body: some View {
        NavigationView {
            VStack {
                // Filter Toggle
                Picker("Filter", selection: $viewModel.filterState) {
                    Text("All").tag(FilterState.all)
                    Text("Alcoholic").tag(FilterState.alcoholic)
                    Text("Non-Alcoholic").tag(FilterState.nonAlcoholic)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                List($viewModel.filteredCocktails){ cocktail in
                    NavigationLink(destination: DetailsView(cocktail: cocktail.wrappedValue)) {
                        VStack(alignment: .leading) {
                            Text(cocktail.name.wrappedValue)
                                .font(.headline)
                            Text(cocktail.shortDescription.wrappedValue)
                                .font(.subheadline)
                        }
                    }
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle(navigationTitle)
        }
    }
    private var navigationTitle: String {
            switch viewModel.filterState {
            case .all:
                return "All Cocktails"
            case .alcoholic:
                return "Alcoholic Cocktails"
            case .nonAlcoholic:
                return "Non-Alcoholic Cocktails"
            }
    }
}


#Preview {
    MainView()
}
