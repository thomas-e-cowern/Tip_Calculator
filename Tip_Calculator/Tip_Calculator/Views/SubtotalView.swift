//
//  SubtotalView.swift
//  Tip_Calculator
//
//  Created by Thomas Cowern on 2/5/26.
//

import SwiftUI

struct SubtotalView: View {
    
    let title: LocalizedStringKey
    let titleFont: Font
    let amount: String
    let amountFont: Font
    
    var body: some View {
        VStack {
            Text(title)
                .font(titleFont)
                .foregroundStyle(.secondary)
            
            Text(amount)
                .font(amountFont)
                .fontWeight(.bold)
                .foregroundStyle(.myDarkGreen)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    SubtotalView(
        title: "Bill",
        titleFont: .largeTitle,
        amount: "19.99",
        amountFont: .largeTitle
    )
}
