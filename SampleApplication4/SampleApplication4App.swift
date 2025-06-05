//
//  SampleApplication4App.swift
//  SampleApplication4
//
//  Created by Fauzan Akmal Mahdi on 03/06/25.
//

import SwiftUI
import SampleLibrary3

@main
struct SampleApplication4App: App {
    public static let shared = BridgeUIManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear() {
                    SampleApplication4App.shared.initFunction(
                        clientId: "b699182d-5ff0-4161-b649-239234ff9cb9",
                        clientSecret: "1dc8e065-2915-4b4e-8df2-45040e8314bd",
                        flavor: "staging"
                    )
                    
                    // Add draggable button to window
                    SampleApplication4App.shared.showFloatingButton()
                }
        }
    }
}
