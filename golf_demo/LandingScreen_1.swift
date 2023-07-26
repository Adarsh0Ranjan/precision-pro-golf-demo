//
//  landing_Screen_1.swift
//  golf_demo
//
//  Created by Roro Solutions on 15/09/22.
//

import SwiftUI

struct landingScreen_1: View {
    var body: some View {
        GeometryReader{ geo in
                Image("onboarding_1")
                .resizable()
                .scaledToFit()
                .frame(width: geo.size.width * 0.55, height: geo.size.height * 0.30, alignment: .center)
                .position(x: geo.size.width*0.5, y: geo.size.height*0.3)
                  
                Text("Welcome to Precision Pro Golf")
                .multilineTextAlignment(.center)
                .frame(width: geo.size.width*0.8,height: geo.size.height*0.20)
                .position(x: geo.size.width*0.5, y: geo.size.height*0.60)
                .font(.custom(CustomFonts.priximaNovaBold, size: geo.size.height*0.05))
                .foregroundColor(CustomColor.textColor)
        
                Text("View detailed course information, learn club distances, and measure progress so you can Hit More Greens.")
                .multilineTextAlignment(.center)
                
            
            .frame(width: geo.size.width*0.8,height:
                    geo.size.height*0.20)
            .font(.custom(CustomFonts.proximaNovaSemiBold, size: geo.size.width*0.035))
            .foregroundColor(CustomColor.detailColor)
            .position(x: geo.size.width*0.5, y: geo.size.height*0.75)
            
        }
    }
}

struct landing_Screen_1_Previews: PreviewProvider {
    static var previews: some View {
        
            landingScreen_1()
            
        
    }
}
