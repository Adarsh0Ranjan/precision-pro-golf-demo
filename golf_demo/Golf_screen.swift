//
//  Golf_screen.swift
//  golf_demo
//
//  Created by Roro Solutions on 19/09/22.
//

import SwiftUI

struct Golf_screen: View {
    var body: some View {
        VStack{
            Text("WHERE ARE YOU PLAYING")
            ZStack {
                GeometryReader { geo in
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.white)
                        .shadow(radius: 10)
                    HStack {
                        Spacer()
                        Text("Avon Fields Golf Course")
                            .foregroundColor(.black)
                            .font(.system(size: geo.size.height*0.35))
                            .position(x: geo.size.width*0.4, y: geo.size.height*0.5)
                        Image("search_icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geo.size.width*0.07, height: geo.size.height*0.5, alignment: .center)
                    }
                }
                
            }
            .frame(width: UIScreen.main.bounds.width*0.7, height: UIScreen.main.bounds.height*0.07)
        }
        
        
    }
}

struct Golf_screen_Previews: PreviewProvider {
    static var previews: some View {
        Golf_screen()
    }
}
