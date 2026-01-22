//
//  SineWaveView.swift
//  Tip_Calculator
//
//  Created by Thomas Cowern on 1/22/26.
//

import SwiftUI

struct SineWaveView: View {
    
    @State private var amplitute: CGFloat = 0.0
    let fillColor: Color
    let Height: CGFloat?
    
    init(fillColor: Color, Height: CGFloat? = nil) {
        self.fillColor = fillColor
        self.Height = Height
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SineWaveView(fillColor: .green, Height: 200)
}
