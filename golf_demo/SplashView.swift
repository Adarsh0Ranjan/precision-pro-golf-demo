//
//  SplashView.swift
//  golf_demo
//
//  Created by Roro Solutions on 15/09/22.
//

import SwiftUI
import WebKit

struct SplashView: UIViewRepresentable {
    private let name : String
    
    init(_ name: String){
        self.name = name
    }
    
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        
        let url = Bundle.main.url(forResource: "splash.gif", withExtension: "")!
        let data = try! Data(contentsOf: url)
        
        webView.load(data,mimeType: "image/gif",characterEncodingName: "UTF-8",baseURL: url.deletingLastPathComponent())
        
        webView.isOpaque = false
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.reload()
    }
}


struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView("splash.gif")
    }
}
