//
//  TransactionView.swift
//  Kakeibo
//
//  Created by Hiroki Kashihara on 2025/05/11.
//

import SwiftUI

struct TransactionView: View {
    @EnvironmentObject var store: ExpenseStore
    
    
   
    var body: some View {
        List {
            ForEach(store.expenses) { item in
                HStack {
                    Text(item.day)
                        .frame(width: 100, alignment: .leading)
                    Divider()
                        .frame(height: 30)
                        .background(Color.gray.opacity(0.5))
                    
                    Text(item.price)
                        .frame(width: 60, alignment: .trailing)
                    Divider()
                        .frame(height: 30)
                        .background(Color.gray.opacity(0.5))
                    
                    Text(item.note)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
            }
        }
        .listStyle(PlainListStyle())
        .frame(height: 250)
        

    }
}

#Preview {
    TransactionView()
        .environmentObject(ExpenseStore())
}
