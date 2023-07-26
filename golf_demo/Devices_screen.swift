//
//  Devices_screen.swift
//  golf_demo
//
//  Created by Roro Solutions on 20/09/22.
//

import SwiftUI

struct Devices_screen: View {
    var body: some View {
        
        GeometryReader { geo in
            CustomColor.screenBg
            Group{
                Text("Devices")
                    .foregroundColor(CustomColor.textColor)
                    .bold()
                    .font(.system(size: geo.size.height*0.023))
                    .frame(width: geo.size.width*0.5, height: geo.size.height*0.03, alignment: .center)
                    .position(x: geo.size.width*0.5, y: geo.size.height*0.1)
            }
            Group{
                RoundedRectangle(cornerRadius: 15)
                    .fill(.white)
                    .shadow(radius: 15)
                    .frame(width: geo.size.width*0.8, height: geo.size.height*0.3, alignment: .center)
                    .position(x: geo.size.width*0.5, y: geo.size.height*0.3)
                Image("r_1_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: geo.size.width*0.5, height: geo.size.height*0.22, alignment: .center)
                    .position(x: geo.size.width*0.5, y: geo.size.height*0.265)
                Image("bluetooth_green")
                    .resizable()
                    .scaledToFit()
                    .frame(width: geo.size.width*0.09, height: geo.size.width*0.09, alignment: .center)
                    .position(x: geo.size.width*0.19, y: geo.size.height*0.185)
                Text("100%")
                    .bold()
                    .foregroundColor(CustomColor.nasty_green)
                    .font(.system(size: geo.size.height*0.01))
                    .frame(width: geo.size.width*0.07, height: geo.size.width*0.07, alignment: .center)
                    .position(x: geo.size.width*0.83, y: geo.size.height*0.163)
                Image("battery_connected")
                    
                    .resizable()
                    .scaledToFit()
                    .frame(width: geo.size.width*0.07, height: geo.size.width*0.07, alignment: .center)
                    .position(x: geo.size.width*0.83, y: geo.size.height*0.18)
                
                
                Text("R1 Smart Rangefinder")
                    .foregroundColor(CustomColor.textColor)
                    .bold()
                    .frame(width: geo.size.width*0.5, height: geo.size.height*0.03, alignment: .center)
                    .font(.system(size: geo.size.height*0.023))
                    .position(x: geo.size.width*0.5, y: geo.size.height*0.38)
                
                Text("Connected")
                    .foregroundColor(CustomColor.nasty_green)
                    .frame(width: geo.size.width*0.5, height: geo.size.height*0.03, alignment: .center)
                    .font(.system(size: geo.size.height*0.02))
                    .position(x: geo.size.width*0.5, y: geo.size.height*0.41)
                
            }
            Group{
                RoundedRectangle(cornerRadius: 15)
                    .fill(.white)
                    .shadow(radius: 15)
                    .frame(width: geo.size.width*0.8, height: geo.size.height*0.3, alignment: .center)
                    .position(x: geo.size.width*0.5, y: geo.size.height*0.63)
                Image("speaker_stock")
                    .resizable()
                    .scaledToFit()
                    .frame(width: geo.size.width*0.5, height: geo.size.height*0.2, alignment: .center)
                    .position(x: geo.size.width*0.5, y: geo.size.height*0.585)
                Image("bluetooth_green")
                    .resizable()
                    .scaledToFit()
                    .frame(width: geo.size.width*0.09, height: geo.size.width*0.09, alignment: .center)
                    .position(x: geo.size.width*0.19, y: geo.size.height*0.518)
                Text("100%")
                    .bold()
                    .foregroundColor(CustomColor.nasty_green)
                    .font(.system(size: geo.size.height*0.01))
                    .frame(width: geo.size.width*0.07, height: geo.size.width*0.07, alignment: .center)
                    .position(x: geo.size.width*0.83, y: geo.size.height*0.5)
                
                Image("battery_connected")
                    .resizable()
                    .scaledToFit()
                    .frame(width: geo.size.width*0.07, height: geo.size.width*0.07, alignment: .center)
                    .position(x: geo.size.width*0.83, y: geo.size.height*0.518)
                
                
                Text("S1 Smart Speaker")
                    .foregroundColor(CustomColor.textColor)
                    .bold()
                    .frame(width: geo.size.width*0.5, height: geo.size.height*0.08, alignment: .center)
                    .font(.system(size: geo.size.height*0.023))
                    .position(x: geo.size.width*0.5, y: geo.size.height*0.72)
                
                Text("Connected")
                    .foregroundColor(CustomColor.nasty_green)
                    .frame(width: geo.size.width*0.5, height: geo.size.height*0.03, alignment: .center)
                    .font(.system(size: geo.size.height*0.02))
                    .position(x: geo.size.width*0.5, y: geo.size.height*0.746)
            }
        }
        .ignoresSafeArea()
        
    }
}

struct Devices_screen_Previews: PreviewProvider {
    static var previews: some View {
        Devices_screen()
    }
}
