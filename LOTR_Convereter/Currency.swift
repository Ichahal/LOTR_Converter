//
//  Currency.swift
//  LOTR_Convereter
//
//  Created by Aman  Chahal on 2/14/25.
//

import SwiftUI

enum Currency: Double, CaseIterable, Identifiable {
    var id: Currency {self}
    
    case copperPenny = 6400
    case silverPenny = 64
    case silverPeice = 16
    case goldPenny = 4
    case goldPeice = 1
    
    
    var image : ImageResource {
        switch self {
        case .copperPenny:
                .copperpenny
        case .silverPeice:
                .silverpiece
        case .goldPeice:
                .goldpiece
        case .goldPenny:
                .goldpenny
        case .silverPenny:
                .silverpenny
        }
    }
    
    var name: String {
        switch self {
        case .copperPenny:
            "Copper Penny"
        case .silverPenny:
            "Silver Penny"
        case .silverPeice:
            "Silver Peice"
        case .goldPenny:
            "Gold Penny"
        case .goldPeice:
            "Gold Peice"
        }
    }
    
    func convert (_ amountString: String, to currency: Currency) -> String {
        guard let doubleAmount = Double(amountString) else {
            return ""
        }
        
        let convertedAmount = (doubleAmount / self.rawValue) * currency.rawValue
        
        return String(format: "%.2f", convertedAmount)
    }
}

