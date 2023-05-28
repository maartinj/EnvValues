//
//  AppThemeKey.swift
//  EnvValues
//
//  Created by Marcin Jędrzejak on 28/05/2023.
//

import SwiftUI

struct AppThemeKey: EnvironmentKey {
    static var defaultValue: AppPurchaseTheme = AppPurchaseTheme.theme(for: .free)
}

extension EnvironmentValues {
    var appTheme: AppPurchaseTheme {
        get {
            self[AppThemeKey.self]
        }
        set {
            self[AppThemeKey.self] = newValue
        }
    }
}

extension View {
    func appTheme(_ theme: AppPurchaseTheme) -> some View {
        environment(\.appTheme, theme)
    }
}
