//
//  TwoColumnView.swift
//  Sprout
//
//  Created by Harrison Kleiman on 6/14/22.
//

import Foundation
import SwiftUI

struct TwoColumnView: View {
    
    let left: String
    let right: String
    
    var body: some View {
        HStack {
            Text(left)
            Spacer()
            Text(right)
        }
    }
}

struct TwoColumnView_Previews: PreviewProvider {
    static var previews: some View {
        TwoColumnView(left: "left", right: "right")
    }
}
