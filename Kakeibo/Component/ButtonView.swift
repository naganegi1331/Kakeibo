//
//  ButtonView.swift
//  Kakeibo
//
//  Created by Hiroki Kashihara on 2025/05/11.
//

import SwiftUI

struct ButtonView: View {
    
    
    
    @State var isAddExpenseActive: Bool = false
    
    
    var body: some View {
        Button {
              isAddExpenseActive = true
            
            //Debug
            print("Add Expense Tapped")
            print(isAddExpenseActive)
            
        } label: {
            Image(systemName: "plus.circle.fill")
                .resizable()
                .frame(width: 60, height: 60)
                .foregroundColor(.blue)
                .shadow(radius: 5)
        }
    }
}

#Preview {
    ButtonView()
}
