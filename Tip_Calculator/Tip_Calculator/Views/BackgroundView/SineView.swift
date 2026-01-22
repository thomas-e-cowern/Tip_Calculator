//
//  SineView.swift
//  Tip_Calculator
//
//  Created by Thomas Cowern on 1/22/26.
//

import SwiftUI

struct SineView: View {
    var body: some View {
        ZStack {
            SineWaveView(fillColor: .blue, height: 200)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            
            SineWaveView(fillColor: .blue, height: 200)
                .rotationEffect(Angle(degrees: 180))
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    SineView()
}
