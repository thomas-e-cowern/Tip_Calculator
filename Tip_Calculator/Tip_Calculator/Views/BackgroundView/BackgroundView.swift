//
//  BackgroundView.swift
//  Tip_Calculator
//
//  Created by Thomas Cowern on 1/22/26.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        ZStack {
            Color
                .white
                .opacity(0.9)
                .ignoresSafeArea()
            
            SineView()
        }
    }
}

#Preview {
    BackgroundView()
}
