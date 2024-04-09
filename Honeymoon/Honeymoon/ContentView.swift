//
//  ContentView.swift
//  Honeymoon
//
//  Created by 양원식 on 4/4/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var showAlert: Bool = false
    @State var showGuide: Bool = false
    
    var body: some View {
        VStack {
            HeaderView(showGuideView: $showGuide)
            
            Spacer()
            
            CardView(honeymoon: honeymoonData[2])
                .padding()
            
            Spacer()
            
            FooterView(showBookingAlert: $showAlert)
        }
        .alert(isPresented: $showAlert, content: {
            Alert(title: Text("SUCCESS"), message: Text("Wishing a lovely and most precious of the times togeter for the amazing couple."), dismissButton: .default(Text("Happy Honeymoon!")))
        })
    }
}

#Preview {
    ContentView()
}
