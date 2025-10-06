//
//  SampleApplication4App.swift
//  SampleApplication4
//
//  Created by Fauzan Akmal Mahdi on 03/06/25.
//

import SwiftUI
import KonnekNativeIos

@main
struct SampleApplication4App: App {
    //    public static let shared = KonnekNative()
    //    private let shared = KonnekNative()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear() {
                    //                     companyId: companystg
                    KonnekNative.shared.initialize(
                        clientId: "b699182d-5ff0-4161-b649-239234ff9cb9",
                        clientSecret: "1dc8e065-2915-4b4e-8df2-45040e8314bd",
                        flavor: "staging"
                    )
                    //                    SampleApplication4App.shared.initialize(
                    //                        clientId: "b699182d-5ff0-4161-b649-239234ff9cb9",
                    //                        clientSecret: "1dc8e065-2915-4b4e-8df2-45040e8314bd",
                    //                        flavor: "staging"
                    //                    )
                    
                    for family in UIFont.familyNames {
                        print("Family: \(family)")
                        for name in UIFont.fontNames(forFamilyName: family) {
                            print("    Font: \(name)")
                        }
                    }
                    
                    
                    // companyId: bcadigitaldemo
                    //                    SampleApplication4App.shared.initFunction(
                    //                        clientId: "61190e21-2e2e-4a01-94d5-7f05c7bbdb5e",
                    //                        clientSecret: "1dc8e065-2915-4b4e-8df2-45040e8314bd",
                    //                        flavor: "production"
                    //                    )
                    
                    // companyId: SprintAsia
                    //                    SampleApplication4App.shared.initFunction(
                    //                        clientId: "42f2486e-3870-466c-9d66-143e0417652b",
                    //                        clientSecret: "1dc8e065-2915-4b4e-8df2-45040e8314bd",
                    //                        flavor: "production"
                    //                    )
                    
                    // Add draggable button to window
                    // SampleApplication4App.shared.showFloatingButton()
                    // SampleApplication4App.shared.showFloatingButton(fontName: "ZurichSans-Semibold")
                    // KonnekNative.shared.showFloatingButton(fontName: "ZurichSans-Semibold")
                    KonnekNative.shared.showFloatingButton()
                }
        }
    }
}
