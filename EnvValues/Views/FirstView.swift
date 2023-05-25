//
// Created for EnvValues
// by  Stewart Lynch on 2023-01-02
// Using Swift 5.0
// Running on macOS 13.1
// 
// Folllow me on Mastodon: @StewartLynch@iosdev.space
// Or, Twitter, if it still exits: https://twitter.com/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch


// Link: https://www.youtube.com/watch?v=rl7xj5usTzk&ab_channel=StewartLynch

import SwiftUI

struct FirstView: View {
    @EnvironmentObject var appStoreService: AppStoreService
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationStack {
            VStack {
                Text("Welcome")
                    .font(.title)
                Text("Your Current Level is \(appStoreService.receipt.rawValue)")
                NavigationLink("Go Next View", value: true)
                    .buttonStyle(.borderedProminent)
                Spacer()
            }
            .withBackground(color: .red)
            .navigationDestination(for: Bool.self, destination: { _ in
                SecondView()
            })
            .navigationTitle("Environment Values")
            .toolbar {
                ToolbarItem {
                    Button {
                        appStoreService.makePurchase = true
                    } label: {
                        Image(systemName: "gearshape")
                    }
                }
            }
        }
        .tint(colorScheme == .dark ? .green : .red)
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
            .environmentObject(AppStoreService())
    }
}
