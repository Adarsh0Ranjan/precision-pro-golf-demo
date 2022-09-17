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
       
            if(isActive){
                VStack{
                    TabView{
                        landingScreen_1()
                        LandingScreen_2()
                        LandingScreen_3()
                        LandingScreen_4()
                    }
                    .tabViewStyle(.page(indexDisplayMode: .always))
                    .onAppear {
                          setupAppearance()
                        
                }
                    Button{
                        
                    }label: {
                        Text("GET STARTED")
                            .frame(width: 200, height: 40, alignment: .center)
                            .font(.system(size: 18))
                            .padding()
                            .foregroundColor(.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color.white, lineWidth: 2)
                        )
                    }
                    .background(Color.green) // If you have this
                    .cornerRadius(25)
                    
                    Text("No Email Requried")
                        .font(.footnote.italic())
                    
                    Button(){
                        
                    }label: {
                        Text("LOG IN")
                            .font(.caption)
                            .padding()
                    }
                
                    }
            }else{
                GeometryReader { geo in
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
                            .frame(width: geo.size.width * 0.60, height: geo.size.width * 0.40, alignment: .center)
                            
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
                .onAppear {
                          setupAppearance()
                        }
            }
        }
        
        
    }
    func setupAppearance() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .green
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
      }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
