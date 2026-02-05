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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
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
