//
//  LandingScreen_3.swift
//  golf_demo
//
//  Created by Roro Solutions on 17/09/22.
//

import SwiftUI

struct LandingScreen_3: View {
    var body: some View {
        GeometryReader{ geo in
            Image("onboarding_3")
                .resizable()
                .scaledToFit()
                .frame(width: geo.size.width * 0.8, height: geo.size.height * 0.45, alignment: .center)
                .position(x: geo.size.width*0.5, y: geo.size.height*0.3)
            
            Text("Learn Club Distances")
                .multilineTextAlignment(.center)
                .frame(width: geo.size.width*0.8,height: geo.size.height*0.20)
                .position(x: geo.size.width*0.5, y: geo.size.height*0.60)
                .font(.custom(CustomFonts.priximaNovaBold, size: geo.size.height*0.05))
                .foregroundColor(CustomColor.textColor)
    
            Text("ooking ro zero in your club lengths? Learn your distance for each club here.")
                .multilineTextAlignment(.center)
                .font(.custom(CustomFonts.proximaNovaSemiBold, size: geo.size.width*0.035))
                .foregroundColor(CustomColor.detailColor)
                .frame(width: geo.size.width*0.8,height: geo.size.height*0.20)
                .position(x: geo.size.width*0.5, y: geo.size.height*0.75)
        }
    }
}

struct LandingScreen_3_Previews: PreviewProvider {
    static var previews: some View {
        LandingScreen_3()
    }
}
