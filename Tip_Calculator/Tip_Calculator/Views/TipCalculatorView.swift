//
//  TipCalculatorView.swift
//  Tip_Calculator
//
//  Created by Thomas Cowern on 1/20/26.
//

import SwiftUI

struct TipCalculatorView: View {
    
    @State private var tipPercentage: Int = 20
    @State private var split: Int = 1
    @State private var bill: Double = 0.0
    @State private var isFocused: Bool = false
    
    let maxSplit: Int = 20
    
    var body: some View {
        ZStack {
            Color.blue.opacity(0.3).ignoresSafeArea()
            
            VStack {
                Text("Title View")
                
                Spacer()
                    
                VStack(alignment: .leading) {
                    Text("Enter Total View")
                    
                    Text("Choose Tip View")
                }
                
                Text("Split View")
                
                Spacer()
                
                // Payment Summart
                if !isFocused {
                    Text("Payment Summary")
                    Spacer()
                }
            }
            .padding()
        }
        .onTapGesture {
            // More to come...
        }
    }
}

#Preview {
    TipCalculatorView()
}
