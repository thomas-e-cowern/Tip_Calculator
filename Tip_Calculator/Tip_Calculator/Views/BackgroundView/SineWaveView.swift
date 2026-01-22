//
//  SineWaveView.swift
//  Tip_Calculator
//
//  Created by Thomas Cowern on 1/22/26.
//

import SwiftUI

struct SineWaveView: View {
    
    @State private var amplitude: CGFloat? = 0.0
    let fillColor: Color
    let height: CGFloat?
    
    init(fillColor: Color, height: CGFloat? = nil) {
        self.fillColor = fillColor
        self.height = height
    }
    
    var body: some View {
        SineWave()
            .fill(fillColor.gradient)
            .shadow(color: Color.black.opacity(0.2), radius: 3, x: 3, y:3)
            .frame(height: amplitude)
            .onAppear {
                withAnimation(.bouncy(duration: 2, extraBounce: 0.5)) {
                    amplitude = height
                }
            }
    }
}

#Preview {
    SineWaveView(fillColor: .green, height: 200)
}

struct SineWave: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.width
        let height = rect.height
        let delta = rect.height / 2.0
        let midY = rect.midY
        
        // Go to left center
        path.move(to: CGPoint(x: 0, y: midY))
        // draw curve from left center
        path.addCurve(to: CGPoint(x: width, y: midY),
                      control1: CGPoint(x: 0.25*width, y: midY-delta),
                      control2: CGPoint(x: 0.75*width, y: midY+delta))
        
        // Add thickness
        path.addLine(to: CGPoint(x: width, y: midY-height/2))
        
        // Extend left
        path.addLine(to: CGPoint(x: 0, y: midY-height/2))
        
        return path
    }
}
