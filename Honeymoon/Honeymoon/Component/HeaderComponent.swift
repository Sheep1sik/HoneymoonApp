//
//  HeaderComponent.swift
//  Honeymoon
//
//  Created by 양원식 on 4/4/24.
//

import SwiftUI

struct HeaderComponent: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20, content: {
            Capsule()
                .frame(width: 120, height: 6)
                .foregroundColor(Color.secondary)
                .opacity(0.2)
            
            Image("logo-honeymoon")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            
        })
    }
}

#Preview {
    HeaderComponent()
}
