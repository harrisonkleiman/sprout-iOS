//
//  MainScreen.swift
//  Sprout
//
//  Created by Harrison Kleiman on 6/14/22.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        TabView {
            VegetableListScreen()
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Image(systemName: "leaf.fill")
                            .foregroundColor(.white)
                    }
                }
                .embedInNavigationView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            Text("Second Page")
                .embedInNavigationView()
                .tabItem {
                    Label("My Garden", systemImage: "leaf")
                }
            
        }.accentColor(Color("peach"))
        .navigationTitle("Sprout")
        

    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
