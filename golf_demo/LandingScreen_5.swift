//
//  LandingScreen_5.swift
//  golf_demo
//
//  Created by Roro Solutions on 18/09/22.
//

import SwiftUI

struct LandingScreen_5: View {
    var body: some View {
        GeometryReader{ geo in
            Image("onboarding_5")
                .resizable()
                .scaledToFit()
                .frame(width: geo.size.width * 0.8, height: geo.size.height * 0.45, alignment: .center)
                .position(x: geo.size.width*0.5, y: geo.size.height*0.3)
              
            
            Text("Connect a Device")
                .multilineTextAlignment(.center)
                .frame(width: geo.size.width*0.8,height: geo.size.height*0.20)
                .position(x: geo.size.width*0.5, y: geo.size.height*0.60)
                .font(.title2.bold())
                .font(.system(size: geo.size.height*0.04))
            
    
            Text("Owe one of our Smart Rangefinders or Speakers? Link uour device to app here.")
                .multilineTextAlignment(.center)
                .font(.system(size: geo.size.height*0.03))
                .foregroundColor(.gray)
                .frame(width: geo.size.width*0.8,height: geo.size.height*0.20)
                .position(x: geo.size.width*0.5, y: geo.size.height*0.80)
        }
    }
}

struct LandingScreen_5_Previews: PreviewProvider {
    static var previews: some View {
        LandingScreen_5()
    }
}
