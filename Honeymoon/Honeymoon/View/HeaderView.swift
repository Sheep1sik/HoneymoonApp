//
//  HeaderView.swift
//  Honeymoon
//
//  Created by 양원식 on 4/4/24.
//

import SwiftUI

struct HeaderView: View {
    
    @Binding var showGuideView: Bool
    
    var body: some View {
        HStack(content: {
            Button(action: {
                print("Information")
            }, label: {
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
            })
            .accentColor(Color.primary)
            
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
    
    return HeaderView(showGuideView: $showGuide)
}
