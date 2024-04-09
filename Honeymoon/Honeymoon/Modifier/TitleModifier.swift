//
//  TitleModifier.swift
//  Honeymoon
//
//  Created by 양원식 on 4/9/24.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(Color.pink)
    }
}
