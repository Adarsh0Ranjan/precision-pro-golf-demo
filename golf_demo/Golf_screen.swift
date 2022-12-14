//
//  Golf_screen.swift
//  golf_demo
//
//  Created by Roro Solutions on 19/09/22.
//

import SwiftUI
struct Golf_screen: View {
    var body: some View {
        GeometryReader{ geo in
            Text("WHERE ARE YOU PLAYING?")
                .foregroundColor(CustomColor.textColor)
                .frame(width: geo.size.width, height: geo.size.height*0.03, alignment: .center)
                .font(.custom(CustomFonts.priximaNovaBold, size: geo.size.height*0.02))
                .position(x: geo.size.width*0.5, y: geo.size.height*0.2)
            
            Group{
                RoundedRectangle(cornerRadius: 15)
                    .fill(.white)
                    .shadow(radius: 15)
                    .frame(width: geo.size.width*0.8, height: geo.size.height*0.08, alignment: .center)
                    .position(x: geo.size.width*0.5, y: geo.size.height*0.3)
               
                
                Text("Avon Fields Golf Course")
                    .font(.custom(CustomFonts.proximaNovaSemiBold, size: geo.size.width*0.04))
                    
                    .foregroundColor(CustomColor.textColor)
                    .frame(width: geo.size.width*0.5, height: geo.size.height*0.03, alignment: .leading)
                    .position(x: geo.size.width*0.45, y: geo.size.height*0.3)
                
                Image("search_icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: geo.size.width*0.07, height: geo.size.height*0.05 ,alignment: .center)
                    .position(x: geo.size.width*0.8, y: geo.size.height*0.3)
            }
            
            
            Group{
                Image("bluetooth_icon")
                    .font(.custom(CustomFonts.proximaNovaSemiBold, size: geo.size.width*0.04))
                    .frame(width: geo.size.width*0.07, height: geo.size.height*0.05 ,alignment: .center)
                    .position(x: geo.size.width*0.12, y: geo.size.height*0.39)
                
                Text("Devices")
                    .frame(width: geo.size.width*0.2, height: geo.size.height*0.2, alignment: .center)
                    .font(.custom(CustomFonts.proximaNovaSemiBold, size: geo.size.width*0.04))
                    .position(x: geo.size.width*0.23, y: geo.size.height*0.39)
                    .foregroundColor(CustomColor.caption_color)
            }
            
            
            Group{
                RoundedRectangle(cornerRadius: 20)
                    .fill(.white)
                    .shadow(radius: 10)
                    .frame(width: geo.size.width*0.8, height: geo.size.height*0.11, alignment: .center)
                    .position(x: geo.size.width*0.5, y: geo.size.height*0.49)
                
                Image("r1_graphic")
                    .resizable()
                    .scaledToFit()
                    .frame(width: geo.size.width*0.2, height: geo.size.height*0.11, alignment: .center)
                    .position(x: geo.size.width*0.25, y: geo.size.height*0.49)
                
                Text("R1 Smart")
                    .font(.custom(CustomFonts.priximaNovaBold ,size: geo.size.width*0.05))
                    .foregroundColor(CustomColor.textColor)
                    .frame(width:geo.size.width*0.3, height: geo.size.height*0.11, alignment: .center)
                    .position(x: geo.size.width*0.48, y: geo.size.height*0.48)
                Image("bluetooth_not_connected")
                    .resizable()
                    .scaledToFit()
                    .frame(width: geo.size.width*0.1, height: geo.size.height*0.1, alignment: .center)
                    .position(x: geo.size.width*0.8, y: geo.size.height*0.473)
                Text("No Connection")
                    .font(.custom(CustomFonts.proximaNovaSemiBold ,size: geo.size.width*0.022))
                    .foregroundColor(CustomColor.caption_color)
                    .frame(width: geo.size.width*0.3, height: geo.size.height*0.1, alignment: .center)
                    .position(x: geo.size.width*0.8, y: geo.size.height*0.515)
            }
            
            Group{
                RoundedRectangle(cornerRadius: 20)
                    .fill(.white)
                    .shadow(radius: 10)
                    .frame(width: geo.size.width*0.8, height: geo.size.height*0.11, alignment: .center)
                    .position(x: geo.size.width*0.5, y: geo.size.height*0.62)
                
                Image("s1_graphic")
                    .resizable()
                    .scaledToFit()
                    .frame(width: geo.size.width*0.2, height: geo.size.height*0.11, alignment: .center)
                    .position(x: geo.size.width*0.25, y: geo.size.height*0.62)
                
                Text("S1 Smart")
                    .font(.custom(CustomFonts.priximaNovaBold ,size: geo.size.width*0.05))
                    .foregroundColor(CustomColor.textColor)
                    .frame(width:geo.size.width*0.3, height: geo.size.height*0.11, alignment: .center)
                    .position(x: geo.size.width*0.48, y: geo.size.height*0.61)
                
                Image("bluetooth_not_connected")
                    .resizable()
                    .scaledToFit()
                    .frame(width: geo.size.width*0.1, height: geo.size.height*0.1, alignment: .center)
                    .position(x: geo.size.width*0.8, y: geo.size.height*0.605)
                Text("No Connection")
                    .frame(width: geo.size.width*0.3, height: geo.size.height*0.1, alignment: .center)
                    .font(.custom(CustomFonts.proximaNovaSemiBold ,size: geo.size.width*0.022))
                    .foregroundColor(CustomColor.caption_color)
                    .position(x: geo.size.width*0.8, y: geo.size.height*0.645)
            }
            
            Group{
                Button{
                    //more code to come
                }label: {
                    Text("START ROUND")
                        .frame(width: geo.size.width*0.71, height: geo.size.height*0.04)
                        .font(.custom(CustomFonts.priximaNovaBold ,size: geo.size.width*0.034))
                        .padding()
                        .foregroundColor(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.white, lineWidth: 1)
                    )
                }
                .background(CustomColor.nasty_green) // If you have this
                .cornerRadius(15)
                .position(x: geo.size.width*0.50, y: geo.size.height*0.75)
            }
            
            
        
        }
        .ignoresSafeArea()
        
        
    }
}

struct Golf_screen_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Golf_screen()
                .previewInterfaceOrientation(.portraitUpsideDown)
            
        }
    }
}
