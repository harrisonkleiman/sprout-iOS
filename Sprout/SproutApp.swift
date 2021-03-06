//
//  SproutApp.swift
//  Sprout
//
//  Created by Harrison Kleiman on 6/14/22.
//

import SwiftUI

@main
struct SproutApp: App {
    init() {
        setupTheme()
        
        Task { [self] in
            await self.importData()
        }
    }
    
    private func importData() async {
        do {
            try await CoreDataManager.shared.importData()
        } catch {
            print(error)
        }
    }
    
    private func setupTheme() {
        
        let headerAppearance = UINavigationBarAppearance()
        
        headerAppearance.backgroundColor = UIColor(#colorLiteral(red: 0.1804504693, green: 0.8003295064, blue: 0.4435202479, alpha: 1))
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        headerAppearance.titleTextAttributes = textAttributes
        headerAppearance.largeTitleTextAttributes = textAttributes
        UINavigationBar.appearance().tintColor = .white
        
        UINavigationBar.appearance().scrollEdgeAppearance = headerAppearance
        
    }
    
    var body: some Scene {
        WindowGroup {
            MainScreen()
        }
    }
}
