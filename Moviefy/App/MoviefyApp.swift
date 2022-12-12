//
//  MoviefyApp.swift
//  Moviefy
//
//  Created by Ali Taha Dinçer on 11.12.2022.
//

import SwiftUI

@main
struct MoviefyApp: App {
    
    // MARK: VARIABLES
    @AppStorage(AppPreferencesConstants.HAS_PASSED_ON_BOARDING)
    var hasPassedOnBoarding = false
    
    @State
    var shouldPassSplash = false
    
    // MARK: BODY
    var body: some Scene {
        WindowGroup {
            ZStack {
                Color("BackgroundColor")
                    .zIndex(0)
                if(shouldPassSplash) {
                    if (hasPassedOnBoarding) {
                        Color.red
                            .zIndex(2)
                    } else {
                        Color.blue
                            .transition(
                                AnyTransition
                                    .opacity
                                    .animation(
                                        .easeInOut(
                                            duration: 0.5
                                        )
                                    )
                            )
                    }
                } else {
                    SplashView(
                        shouldPassSplash: $shouldPassSplash
                    )
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}
