//
//  HeaderView.swift
//  Kakeibo
//
//  Created by Hiroki Kashihara on 2025/05/11.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        
        Text("2025 May")
            .font(.largeTitle)
            .fontWeight(.bold)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading)
    }
}

#Preview {
    HeaderView()
}
