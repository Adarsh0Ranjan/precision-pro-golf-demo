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
    @State private var showingGolfView = false;
    var body: some View {
        if(showingGolfView){
            tabView()
        }else if(isActive){
                GeometryReader {  geo in
                    TabView{
                        landingScreen_1()
                        LandingScreen_2()
                        LandingScreen_3()
                        LandingScreen_4()
                        LandingScreen_5()
                    }
                    .tabViewStyle(.page(indexDisplayMode: .always))
                    .onAppear {
                          setupAppearance()
                    }
                    .frame(width: geo.size.width, height: geo.size.height*0.70)
                    
                    Button{
                        showingGolfView.toggle()
                    }label: {
                        Text("GET STARTED")
                            .frame(width: geo.size.width*0.70, height: geo.size.height*0.05)
                            .font(.system(size: 18))
                            .padding()
                            .foregroundColor(.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.white, lineWidth: 1)
                        )
                    }
                    .background(CustomColor.nasty_green) // If you have this
                    .cornerRadius(15)
                    .position(x: geo.size.width*0.50, y: geo.size.height*0.80)

                    Text("No Email Requried")
                        .foregroundColor(.gray)
                        .font(.footnote.italic())
                        .position(x: geo.size.width*0.50, y: geo.size.height*0.87)
                    
                    Button(){
                        
                    }label: {
                        Text("LOG IN")
                            .foregroundColor(.gray)
                            .font(.caption)
                            .padding()
                     }
                    .position(x: geo.size.width*0.50, y: geo.size.height*0.94)
                
                }
            }else{
                GeometryReader { geo in
                
                    Color.green
                    SplashView("splash.gif")
                        .frame(width: geo.size.width * 0.40, height: geo.size.width * 0.40, alignment: .center)
                        .position(x: geo.size.width * 0.50, y: geo.size.height * 0.50)
                    
                    ProgressView("",value: downladAmoount,total: 100)
                        .accentColor(.white)
                        .frame(width: geo.size.width * 0.60, height: geo.size.width * 0.40, alignment: .center)
                        .position(x: geo.size.width * 0.50, y: geo.size.height * 0.67)
//
                    Text("APP IN BETA MODE")
                        .frame(width: geo.size.width * 0.60, height: geo.size.width * 0.40, alignment: .center)
                        .position(x: geo.size.width * 0.50, y: geo.size.height * 0.80)

                        .font(.title2.bold())
                        .foregroundColor(.white)
                }
                .ignoresSafeArea()
                .onReceive(timer){ _ in
                    if downladAmoount <= 100{
                        downladAmoount += .random(in: 1...3);
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

    




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
