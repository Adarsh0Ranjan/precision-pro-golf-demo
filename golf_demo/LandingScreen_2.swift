//
//  LandingScreen_2.swift
//  golf_demo
//
//  Created by Roro Solutions on 17/09/22.
//

import SwiftUI

struct LandingScreen_2: View {
    var body: some View {
        GeometryReader{ geo in
            Image("onboarding_2")
              .resizable()
              .scaledToFit()
              .frame(width: geo.size.width * 0.8, height: geo.size.height * 0.45, alignment: .center)
              .position(x: geo.size.width*0.5, y: geo.size.height*0.3)
            
            Text("View Detailed Course Information ")
                .multilineTextAlignment(.center)
                .frame(width: geo.size.width*0.8,height: geo.size.height*0.20)
                .position(x: geo.size.width*0.5, y: geo.size.height*0.60)
                .font(.custom(CustomFonts.priximaNovaBold, size: geo.size.height*0.05))
                .foregroundColor(CustomColor.textColor)
            
    
            Text("Front, center, and back of the green. With35,000+ golf courses, we’ve got you covered.")
                .multilineTextAlignment(.center)
                .frame(width: geo.size.width*0.8,height: geo.size.height*0.20)
                .font(.custom(CustomFonts.proximaNovaSemiBold, size: geo.size.width*0.035))
                .foregroundColor(CustomColor.detailColor)
                .position(x: geo.size.width*0.5, y: geo.size.height*0.75)
            
        }
    }
}

struct LandingScreen_2_Previews: PreviewProvider {
    static var previews: some View {
        LandingScreen_2()
    }
}
