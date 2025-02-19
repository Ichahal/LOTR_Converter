//
//  ExchangeRate.swift
//  LOTR_Convereter
//
//  Created by Aman  Chahal on 2/14/25.
//

import SwiftUI

struct ExchangeRate: View {
    let leftImage: ImageResource
    let text: String
    let rightImage: ImageResource
    
    var body: some View {
        HStack{
            // left img
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame( height: 33)
            
            // txt
            Text(text)
            
            // right img
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame( height: 33)
        }
    }
}


