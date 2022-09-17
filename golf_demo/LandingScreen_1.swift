//
//  landing_Screen_1.swift
//  golf_demo
//
//  Created by Roro Solutions on 15/09/22.
//

import SwiftUI

struct landingScreen_1: View {
    var body: some View {
        VStack{
            VStack{
            
                Image("green_logo-1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200, alignment: .center)
                Text("""
                    Welcome to
                    Precision Pro Golf
                """)
                .frame(width: 200, height: 200, alignment: .leading)
                    .multilineTextAlignment(.center)
                    .font(.headline.bold())

                Text("""
                     View detailed course information, learn club distances, and measure progress so you can Hit More Greens.
                     """)
                .frame(width: 310, height: 100, alignment: .leading)
                .multilineTextAlignment(.center)
                
                
                
            }
            
            
        }
    }
    
}

struct landing_Screen_1_Previews: PreviewProvider {
    static var previews: some View {
        landingScreen_1()
    }
}
