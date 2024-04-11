//
//  HeaderView.swift
//  Honeymoon
//
//  Created by 양원식 on 4/4/24.
//

import SwiftUI

struct HeaderView: View {
    
    @Binding var showGuideView: Bool
    @Binding var showInfoView: Bool
    
    var body: some View {
        HStack(content: {
            Button(action: {
                self.showInfoView.toggle()
            }, label: {
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
            })
            .accentColor(Color.primary)
            .sheet(isPresented: $showInfoView, content: {
                InfoView()
            })
            
            Spacer()
            
            Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            
            Spacer()
            
            Button(action: {
                //print("Guide")
                self.showGuideView.toggle()
            }, label: {
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24, weight: .regular))
            })
            .accentColor(Color.primary)
            .sheet(isPresented: $showGuideView, content: {
                GuideView()
            })
        })
        .padding()
    }
}

#Preview {
    @State var showGuide:Bool = false
    @State var showInfo:Bool = false
    
    return HeaderView(showGuideView: $showGuide, showInfoView: $showInfo)
}
