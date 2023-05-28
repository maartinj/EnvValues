//
//  AppPurchaseTheme.swift
//  EnvValues
//
//  Created by Marcin Jędrzejak on 28/05/2023.
//

import SwiftUI

struct AppPurchaseTheme {
    var name: String
    var primary: Color
    var secondary: Color
    
    static func theme(for receipt: Receipt) -> AppPurchaseTheme {
        switch receipt {
        case .free:
            return AppPurchaseTheme(name: "Free Version", primary: .red, secondary: .orange)
        case .premium:
            return AppPurchaseTheme(name: "Premium Version", primary: .blue, secondary: .green)
        case .premiumPlus:
            return AppPurchaseTheme(name: "Premium Plus Version", primary: .purple, secondary: .indigo)
        }
    }
}
