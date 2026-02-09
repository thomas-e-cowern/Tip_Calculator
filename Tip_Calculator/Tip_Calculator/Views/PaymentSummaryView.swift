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
            VStack {
                SubtotalView(
                    title: "Total Per Person",
                    titleFont: font,
                    amount: totalPerPerson,
                    amountFont: font
                )
                .frame(
                    maxHeight: .infinity
                )
                
                HStack {
                    SubtotalView(
                        title: "Bill",
                        titleFont: font,
                        amount: billPerPerson,
                        amountFont: font
                    )
                    
                    SubtotalView(
                        title: "Tip",
                        titleFont: font,
                        amount: tipPerPerson,
                        amountFont: font
                    )
                }
            }

        } label: {
            Label("Summary", systemImage: "book")
                .font(font)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
                .padding()
        }
        .backgroundStyle(.myLightGreen.opacity(0.8))
        .clipShape(.rect(cornerRadius: 20))
    }
}

#Preview {
    // Simulate with other view
    VStack {
        RoundedRectangle(cornerRadius: 20)
            .fill(.blue)
        
        PaymentSummaryView(
            tipPercentage: 15,
            split: 2,
            bill: 100.00
        )
    }
    .padding()
}
