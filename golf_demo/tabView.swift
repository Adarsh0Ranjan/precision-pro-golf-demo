//
//  tabView.swift
//  golf_demo
//
//  Created by Roro Solutions on 20/09/22.
//

import SwiftUI
struct tabView: View {

@State private var selectedIndex = 2
    var body: some View {
        GeometryReader { geo in
            switch selectedIndex{
                case 0:
                    StatsView()
                case 1:
                    ClubsView()
                case 2:
                    Golf_screen()
                case 3:
                    Score()
                case 4:
                    Devices_screen()
                default:
                  Golf_screen()
            }
            Section{
                Button{
                    selectedIndex = 0;
                }label: {
                    if(selectedIndex == 0){
                        VStack(spacing: 0){
                            Image("profile_selected")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width*0.08, height: geo.size.width*0.08)
                            Text("STATS")
                                .font(.custom(CustomFonts.proximaNovaSemiBold, size: geo.size.width*0.03))
                                .foregroundColor(CustomColor.nasty_green)
                                .padding([.top],7)
                            Image("tab_highlight_indicator")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width*0.09, height: geo.size.width*0.01)
                        }
                        
                    }else{
                        VStack(spacing: 0){
                            Image("profile")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width*0.08, height: geo.size.width*0.08)
                            Text("STATS")
                                .font(.custom(CustomFonts.proximaNovaSemiBold, size: geo.size.width*0.03))
                                .foregroundColor(CustomColor.tabViewColor)
                                .padding([.top],7)
                        }
                        
                    }
                    
                }
            }
            
            .position(x: geo.size.width*0.15, y: geo.size.height*0.95)
            Section{
                Button{
                    selectedIndex = 1;
                }label: {
                    if(selectedIndex == 1){
                        VStack(spacing : 0){
                            Image("clubs_selected")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width*0.08, height: geo.size.width*0.08)
                            
                            Text("CLUBS")
                                .font(.custom(CustomFonts.proximaNovaSemiBold, size: geo.size.width*0.03))
                                .foregroundColor(CustomColor.nasty_green)
                                .padding([.top],7)
                            Image("tab_highlight_indicator")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width*0.09, height: geo.size.width*0.01)
                                
                                
                        }
                        
                    }else{
                        VStack(spacing: 0){
                            Image("clubs")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width*0.08, height: geo.size.width*0.08)
                            Text("CLUBS")
                                .font(.custom(CustomFonts.proximaNovaSemiBold, size: geo.size.width*0.03))
                                .foregroundColor(CustomColor.tabViewColor)
                                .padding([.top],7)
                        }
                        
                    }
                    
                }
            }
            .position(x: geo.size.width*0.32, y: geo.size.height*0.95)
            Section{
                Button{
                    selectedIndex = 2
                }label: {
                    if(selectedIndex == 2){
                        VStack(spacing: 0){
                            Image("golf_tab_icon")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width*0.13, height: geo.size.width*0.13)
                            
                            Text("GOLF")
                                .font(.custom(CustomFonts.proximaNovaSemiBold, size: geo.size.width*0.03))
                                .foregroundColor(CustomColor.nasty_green)
                                .padding([.top],7)
                            
                            Image("tab_highlight_indicator")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width*0.08, height: geo.size.width*0.01)
                            
                        }
                        
                    }else{
                        VStack(spacing: 0){
                            Image("golf_tab_icon")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width*0.13, height: geo.size.width*0.13)
                            Text("GOLF")
                                .font(.custom(CustomFonts.proximaNovaSemiBold, size: geo.size.width*0.03))
                                .foregroundColor(CustomColor.tabViewColor)
                                .padding([.top],7)
                                
                        }
                        
                    }
                    
                }
            }
            .position(x: geo.size.width*0.50, y: geo.size.height*0.938)
            Section{
                Button{
                    selectedIndex = 3;
                }label: {
                    if(selectedIndex == 3){
                        VStack(spacing: 0){
                            Image("record_selected")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width*0.08, height: geo.size.width*0.08)
                            Text("RECORD")
                                .font(.custom(CustomFonts.proximaNovaSemiBold, size: geo.size.width*0.03))
                                .foregroundColor(CustomColor.nasty_green)
                                .padding([.top],7)
                            Image("tab_highlight_indicator")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width*0.12, height: geo.size.width*0.01)
                        }
                        
                    }else{
                        VStack(spacing: 0){
                            Image("record")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width*0.08, height: geo.size.width*0.08)
                            Text("RECORD")
                                .font(.custom(CustomFonts.proximaNovaSemiBold, size: geo.size.width*0.03))
                                .foregroundColor(CustomColor.tabViewColor)
                                .padding([.top],7)
                                
                        }
                        
                    }
                    
                }
            }
            .position(x: geo.size.width*0.678, y: geo.size.height*0.95)
            Section{
                Button{
                    selectedIndex = 4
                }label: {
                    if(selectedIndex == 4){
                        VStack(spacing: 0){
                            Image("device_tab_icon_selected")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width*0.08, height: geo.size.width*0.07)
                            Text("DEVICES")
                                .font(.custom(CustomFonts.proximaNovaSemiBold, size: geo.size.width*0.03))
                                .padding([.top],7)
                            Image("tab_highlight_indicator")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width*0.12, height: geo.size.width*0.01)
                            
                        }
                        
                    }else{
                        VStack(spacing: 0){
                            Image("device_tab_icon")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width*0.08, height: geo.size.width*0.08)
                            Text("DEVICES")
                                .font(.custom(CustomFonts.proximaNovaSemiBold, size: geo.size.width*0.03))
                                .foregroundColor(CustomColor.tabViewColor)
                                .padding([.top],7)
                        }
                        
                    }
                    
                }
            }
            .position(x: geo.size.width*0.85, y: geo.size.height*0.95)
        }
    }
}
struct tabView_Previews: PreviewProvider {
    static var previews: some View {
        tabView()
            
        
    }
}
            
                
                
