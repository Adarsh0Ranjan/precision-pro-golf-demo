//
//  ContentView.swift
//  golf_demo
//
//  Created by Roro Solutions on 15/09/22.
//

import SwiftUI

struct ContentView: View {
    @State private var downladAmoount = 0.0
    let timer = Timer.publish(every: 0.1  , on: .main, in: .common).autoconnect()
    
    @State private var isActive = false
    var body: some View {
        GeometryReader { geo in
            if(isActive){
                VStack {
                    Text("SplashScreen")
                }
            }else{
                ZStack{
                    Color.green
                    
                    
                    VStack{
                        Spacer()
                        
                        Spacer()
                        SplashView("splash.gif")
                            .frame(width: geo.size.width * 0.50, height: geo.size.width * 0.40, alignment: .center)
                        
                        ProgressView("",value: downladAmoount,total: 100)
                            .accentColor(.white)
                            .frame(width: geo.size.width * 0.60, height: geo.size.width * 0.40, alignment: .center)
                        
                        Text("APP IN BETA MODE")
                            .frame(width: geo.size.width * 0.60, height: geo.size.width * 0.30, alignment: .center)
                            
                            .font(.title2.bold())
                            .foregroundColor(.white)
                        Spacer()
                        
                        
                            
                        
                    }
                    .ignoresSafeArea()
                    
                    
                }
                .onReceive(timer){ _ in
                    if downladAmoount <= 97{
                    downladAmoount += 3;
                    }
                }
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 4.0 ){
                        withAnimation{
                            self.isActive = true
                        }
                        
                    }
                }
            }
        }
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
