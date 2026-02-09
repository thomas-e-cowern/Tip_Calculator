//
//  PaymentSummaryView.swift
//  Tip_Calculator
//
//  Created by Thomas Cowern on 2/9/26.
//

import SwiftUI

struct PaymentSummaryView: View {
    
    let tipPercentage: Int
    let split: Int
    let bill: Double
    
    var font: Font = .headline
    
    var totalPerPerson: String {
        "300"
    }
    
    var billPerPerson: String {
        "150"
    }
    
    var tipPerPerson: String {
        "35"
    }
    
    var body: some View {
        GroupBox {
            Text("Tip: \(tipPercentage)%")
            Text("Split: \(split)")
            Text("Total: \(bill)")
        } label: {
            Label("Summary", systemImage: "book")
                .font(font)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
                .padding()
        }
    }
}

#Preview {
    PaymentSummaryView(tipPercentage: 15, split: 2, bill: 100.00)
}
