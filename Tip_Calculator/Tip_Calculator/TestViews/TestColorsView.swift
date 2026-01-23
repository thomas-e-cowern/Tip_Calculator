//
//  TestColorsView.swift
//  Tip_Calculator
//
//  Created by Thomas Cowern on 1/23/26.
//

import SwiftUI

struct TestColorsView: View {
    
    let colors: [Color] = [.charcoalWhite, .classicBlue, .indigoCalm, .mintFresh, .tealOcean, .warmCoral]
    let dim: Double = 50.0
    
    var body: some View {
        VStack {
            ForEach(self.colors, id: \.self) { color in
                RoundedRectangle(cornerRadius: 10)
                    .fill(color)
                    .frame(width: dim, height: dim)
            }
        }
    }
}

#Preview {
    TestColorsView()
}
