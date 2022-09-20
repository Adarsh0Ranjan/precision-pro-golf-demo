//
//  tabView.swift
//  golf_demo
//
//  Created by Roro Solutions on 20/09/22.
//

import SwiftUI

struct tabView: View {
  
    var body: some View {
        TabView{
            
            Devices_screen()
                .tabItem{
                    Image("golf_tab_icon")
                        .padding()
                    Text("DEVICES")
                        .padding()
                }
            Golf_screen()
                .tabItem{
                    
                    Image("device_tab_icon_selected")
                    Text("GOLF")
                }
        }
    }
}

struct tabView_Previews: PreviewProvider {
    static var previews: some View {
        tabView()
    }
}
