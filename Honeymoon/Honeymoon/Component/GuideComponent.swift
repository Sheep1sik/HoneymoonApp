//
//  GuideComponent.swift
//  Honeymoon
//
//  Created by 양원식 on 4/4/24.
//

import SwiftUI

struct GuideComponent: View {
    // MARK: - PROPERTY
    var title: String
    var subtitle: String
    var description: String
    var icon: String
    
    // MARK: - FUNCTION
    
    // MARK: - BODY
    
    var body: some View {
        HStack(alignment: .center, spacing: 20, content: {
            Image(systemName: icon)
                .font(.largeTitle)
                .foregroundColor(Color.pink)
            
            VStack(alignment: .leading, spacing: 4, content: {
                HStack(content: {
                    Text(title.uppercased())
                        .font(.title)
                        .fontWeight(.heavy)
                    Spacer()
                    Text(subtitle.uppercased())
                        .font(.footnote)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.pink)
                })
                Divider().padding(.bottom, 4)
                Text(description)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            })
        })
    }
}

// MARK: - PREVIEW

#Preview {
    GuideComponent(title: "Title", subtitle: "Swipe right", description: "This is a placeholder sentence. This is a placeholder sentence. This is a placeholder sentence.", icon: "heart.circle")
}
