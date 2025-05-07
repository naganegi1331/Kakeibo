//
//  BudgetExpensesView.swift
//  Kakeibo
//
//  Created by Hiroki Kashihara on 2025/05/07.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject private var store = ExpenseStore()
    @State private var isAddExpenseActive: Bool = false
    
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    HeaderView()

                    Spacer()

                    TransactionView()

                    BottomIconView()
                }

                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        AddExpenseButton(isActive: $isAddExpenseActive)
                            .padding()
                    }
                }
            }
            .navigationDestination(isPresented: $isAddExpenseActive) {
                AddExpenseView()
            }
        }
        .environmentObject(store) 
    }
}



#Preview {
    HomeView()
}
