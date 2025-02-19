//
//  SelectCurrency.swift
//  LOTR_Convereter
//
//  Created by Aman  Chahal on 2/14/25.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @Binding var topCurrency: Currency
    @Binding var bottomCurrency: Currency

    
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
                IconGrid(selectedCurrency: self.$topCurrency)
                
                
                // text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    .padding(.top)

                // currency icons
                IconGrid(selectedCurrency: self.$bottomCurrency)
                
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
            .foregroundStyle(.black)

        }
    }
}

#Preview {
    @Previewable @State var topCurrency: Currency = .silverPeice
    @Previewable @State var bottomCurrency: Currency = .goldPeice
    SelectCurrency( topCurrency: $topCurrency, bottomCurrency: $bottomCurrency)
}
