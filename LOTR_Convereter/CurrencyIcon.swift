//
//  CurrencyIcon.swift
//  LOTR_Convereter
//
//  Created by Aman  Chahal on 2/14/25.
//

import SwiftUI

struct CurrencyIcon: View {
    let curImage: ImageResource
    let curName: String
    
    var body: some View {
        // currency icon
        ZStack(alignment: .bottom){
            // currency img
            Image(curImage)
                .resizable()
                .scaledToFit()
            
            // currency name
            Text(curName)
                .padding(3)
                .font(.caption)
                .frame(maxWidth: .infinity)
                .background(.brown.opacity(0.75))
        }
        .padding(3)
        .frame(width: 100, height: 100)
        .background(.brown)
        .clipShape(.rect(cornerRadius: 25))    }
}

