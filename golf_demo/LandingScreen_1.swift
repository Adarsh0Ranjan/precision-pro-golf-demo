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
                        .frame(width: 150, height: 151)
                        .padding(.top,162)
                        
                    Text("Welcome to")
                        .padding(.top)
                        .font(.title)
            
                      
                       
                    
                    Text("View detailed course information, learn club distances, and measure progress so you can Hit More Greens.")
                        Spacer()
                   
                        
                 
                }
            
            
            }
                
            
         
        
        
    }
}

struct landing_Screen_1_Previews: PreviewProvider {
    static var previews: some View {
        landingScreen_1()
    }
}
