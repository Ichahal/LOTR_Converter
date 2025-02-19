//
//  SelectCurrency.swift
//  LOTR_Convereter
//
//  Created by Aman  Chahal on 2/14/25.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @State var selectedCurrency: Currency
    
    var body: some View {
        ZStack{
            // parchment background img
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            //
            VStack{
                // text
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                
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
                
                
                // text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)

                // currency icons
                
                // done button
                Button("Done"){
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .padding()
            .multilineTextAlignment(.center)

        }
    }
}

#Preview {
    SelectCurrency( selectedCurrency: .silverPeice)
}
