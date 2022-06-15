//
//  VegetableDetailScreen.swift
//  Sprout
//
//  Created by Harrison Kleiman on 6/14/22.
//

import SwiftUI

enum VegetableInfoOptions: CaseIterable {
    case about
    case companions
    case problems
}

extension VegetableInfoOptions {
    
    var title: String {
        switch self {
            case .about: return "Plant Summary"
            case .companions: return "Companions"
            case .problems: return "Precautions"
        }
    }
    
}

struct VegetableDetailScreen: View {
    
    let vegetable: VegetableViewModel
    @State private var selection: VegetableInfoOptions = .about
    
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading) {
                
                Picker("Select", selection: $selection) {
                    ForEach(VegetableInfoOptions.allCases, id: \.self) { info in
                        Text(info.title).tag(info)
                    }
                }.pickerStyle(.segmented)
                
                switch selection {
                    case .about:
                        AboutUs(vegetable: vegetable)
                    case .companions:
                        Text("Companions")
                    case .problems:
                        Text("Problems")
                }
                
            }
            .navigationTitle(vegetable.name)
        }
    }
}

struct VegetableDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        VegetableDetailScreen(vegetable: VegetableViewModel.default())
            .embedInNavigationView()
    }
}

