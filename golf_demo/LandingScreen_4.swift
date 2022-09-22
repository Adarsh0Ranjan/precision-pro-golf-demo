//
//  LandingScreen_4.swift
//  golf_demo
//
//  Created by Roro Solutions on 17/09/22.
//

import SwiftUI

struct LandingScreen_4: View {
    var body: some View {
        GeometryReader{ geo in
            Image("onboarding_4")
                .resizable()
                .scaledToFit()
                .frame(width: geo.size.width * 0.8, height: geo.size.height * 0.45, alignment: .center)
                .position(x: geo.size.width*0.5, y: geo.size.height*0.3)
            
            Text("Analyze Progress")
                .multilineTextAlignment(.center)
                .frame(width: geo.size.width*0.8,height: geo.size.height*0.20)
                .position(x: geo.size.width*0.5, y: geo.size.height*0.60)
                .font(.custom(CustomFonts.priximaNovaBold, size: geo.size.height*0.05))
                .foregroundColor(CustomColor.textColor)
            
            Text("See where you’re strong, where you’re weak, and what area you need to improve for lower scores.")
                .multilineTextAlignment(.center)
                .font(.custom(CustomFonts.proximaNovaSemiBold, size: geo.size.width*0.035))
                .foregroundColor(CustomColor.detailColor)
                .frame(width: geo.size.width*0.8,height: geo.size.height*0.20)
                .position(x: geo.size.width*0.5, y: geo.size.height*0.75)
            
        }
    }
}

struct LandingScreen_4_Previews: PreviewProvider {
    static var previews: some View {
        LandingScreen_4()
    }
}
