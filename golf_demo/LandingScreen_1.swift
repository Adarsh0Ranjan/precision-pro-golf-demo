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
                .font(.title2.bold())
                .font(.system(size: geo.size.height*0.04))
        
                Text("View detailed course information, learn club distances, and measure progress so you can Hit More Greens.")
                .multilineTextAlignment(.center)
            .font(.system(size: geo.size.height*0.03))
            .foregroundColor(.gray)
            .frame(width: geo.size.width*0.8,height: geo.size.height*0.20)
            .position(x: geo.size.width*0.5, y: geo.size.height*0.80)
            
        }
    }
}

struct landing_Screen_1_Previews: PreviewProvider {
    static var previews: some View {
        
            landingScreen_1()
            
        
    }
}
