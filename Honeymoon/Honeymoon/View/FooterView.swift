//
//  FooterView.swift
//  Honeymoon
//
//  Created by 양원식 on 4/4/24.
//

import SwiftUI

struct FooterView: View {
    
    @Binding var showBookingAlert: Bool
    
    var body: some View {
        HStack(content: {
            Image(systemName: "xmark.circle")
                .font(.system(size: 42, weight: .light))
            
            Spacer()
            
            Button(action: {
                // print("Success!")
                self.showBookingAlert.toggle()
            }, label: {
                Text("Book Destination".uppercased())
                    .font(.system(.subheadline, design: .rounded))
                    .fontWeight(.heavy)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 12)
                    .accentColor(Color.pink)
                    .background(
                        Capsule().stroke(Color.pink, lineWidth: 2)
                    )
            })
            
            Spacer()
            
            Image(systemName: "heart.circle")
                .font(.system(size: 42, weight: .light))
        })
        .padding()
    }
}

#Preview {
    
    @State var showAlert: Bool = false
    return FooterView(showBookingAlert: $showAlert)
}
