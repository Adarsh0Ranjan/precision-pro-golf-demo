//
//  tabView.swift
//  golf_demo
//
//  Created by Roro Solutions on 20/09/22.
//

import SwiftUI

struct tabView: View {
    
@State private var selection = 2
    var body: some View {
        
        ZStack{
            TabView(selection: $selection){
                StatsView()
                    .tabItem{
                        if(selection == 0){
                            Image("profile_selected")
                        }else{
                            Image("profile")
                        }
                        
                    }.tag(0)
                
                ClubsView()
                    .tabItem{
                        if(selection == 1){
                            Image("clubs_selected")
                        }else{
                            Image("clubs")
                        }
                        
                    }.tag(1)
                
                Golf_screen()
                    .tabItem{
                        if(selection == 2){
                            Image("golf_tab_icon")
                        }else{
                            Image("golf_tab_icon")
                        }
                        
                    }.tag(2)
                
                Score()
                    .tabItem{
                        if(selection == 3){
                            Image("record_selected")
                        }else{
                            Image("record")
                        }
                        
                        
                    }.tag(3)
                
                Devices_screen()
                    .tabItem{
                        if(selection == 4){
                            Image("device_tab_icon_selected")
                        }else{
                            Image("device_tab_icon")
                        }
                        
                    }.tag(4)
            }
            .shadow(radius: 15)
            .accentColor(CustomColor.nasty_green)
            .onAppear() {
                UITabBar.appearance().barTintColor = .white
            }
        }
        
    }
}

struct tabView_Previews: PreviewProvider {
    static var previews: some View {
        tabView()
    }
}
