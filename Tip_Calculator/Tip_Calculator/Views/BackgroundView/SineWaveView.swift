//
//  SineWaveView.swift
//  Tip_Calculator
//
//  Created by Thomas Cowern on 1/22/26.
//

import SwiftUI

struct SineWaveView: View {
    
    @State private var amplitude: CGFloat = 0.0
    let fillColor: Color
    let Height: CGFloat?
    
    init(fillColor: Color, Height: CGFloat? = nil) {
        self.fillColor = fillColor
        self.Height = Height
    }
    
    var body: some View {
        SineWave()
            .fill(fillColor.gradient)
            .shadow(color: Color.black.opacity(0.2), radius: 3, x: 3, y:3)
            .frame(height: amplitude)
            .onAppear {
                withAnimation(.bouncy(duration: 2, extraBounce: 0.5)) {
                    // More to come...
                }
            }
    }
}

#Preview {
    SineWaveView(fillColor: .green, Height: 200)
}


