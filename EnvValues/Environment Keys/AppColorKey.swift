//
//  AppColorKey.swift
//  EnvValues
//
//  Created by Marcin Jędrzejak on 25/05/2023.
//

import SwiftUI

struct AppColorKey: EnvironmentKey {
    static var defaultValue: Color = .red
}

extension EnvironmentValues {
    var appColor: Color {
        get {
            self[AppColorKey.self]
        }
        set {
            self[AppColorKey.self] = newValue
        }
    }
}

extension View {
    func appColor(_ color: Color) -> some View {
        environment(\.appColor, color)
    }
}
