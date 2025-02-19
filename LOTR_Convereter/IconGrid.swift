//
//  IconGrid.swift
//  LOTR_Convereter
//
//  Created by Aman  Chahal on 2/14/25.
//

import SwiftUI

struct IconGrid: View {
    @Binding var selectedCurrency: Currency
    
    var body: some View {
        // currency icons
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]){
            ForEach(Currency.allCases){ currency in
                if self.selectedCurrency == currency {
                    
                    CurrencyIcon(curImage: currency.image, curName: currency.name)
                        .shadow(color: .black, radius: 10)
                        .overlay{
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(lineWidth: 3)
                                .opacity(0.5)
                        }
                } else {
                    CurrencyIcon(curImage: currency.image, curName: currency.name)
                        .onTapGesture {
                            self.selectedCurrency = currency
                        }
                }
            }}
    }
}

#Preview {
    @Previewable @State var selectCurrency: Currency = .silverPeice

    IconGrid( selectedCurrency: $selectCurrency)
}
