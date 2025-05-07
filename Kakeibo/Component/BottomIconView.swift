//
//  BottomIconView.swift
//  Kakeibo
//
//  Created by Hiroki Kashihara on 2025/05/11.
//

import SwiftUI

struct BottomIconView: View {
    var body: some View {
        
        HStack{
            Text("A")
                .fontWeight(.bold)
                .padding()
            Spacer()
            Text("B")
                .fontWeight(.bold)
                .padding()
            Spacer()
            Text("C")
                .fontWeight(.bold)
                .padding()
        }
    }
}

#Preview {
    BottomIconView()
}
