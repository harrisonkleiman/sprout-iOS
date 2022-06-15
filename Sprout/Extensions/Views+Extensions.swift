//
//  Views+Extensions.swift
//  Sprout
//
//  Created by Harrison Kleiman on 6/14/22.
//

import Foundation
import SwiftUI

extension View {
    
    func embedInNavigationView() -> some View {
        NavigationView { self }
    }
    
}
