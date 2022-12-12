//
//  SplashView.swift
//  Moviefy
//
//  Created by Ali Taha Dinçer on 11.12.2022.
//

import SwiftUI

struct SplashView: View {
    // MARK: VARIABLES
    @Binding
    var shouldPassSplash: Bool
    
    var body: some View {
        Image("SplashIcon")
            .renderingMode(.template)
            .foregroundColor(Color("MoviefyRed"))
            .task {
                withAnimation {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        shouldPassSplash = true
                    }
                }
            }
    }
}

struct SplashView_Previews: PreviewProvider {
    @State static var passSplash = false
    static var previews: some View {
        SplashView(
            shouldPassSplash: $passSplash
        )
    }
}
