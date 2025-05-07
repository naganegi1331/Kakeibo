//
//  AddExpenseView.swift
//  Kakeibo
//
//  Created by Hiroki Kashihara on 2025/05/11.
//

import SwiftUI

struct AddExpenseView: View {
    @EnvironmentObject private var store: ExpenseStore
    @Environment(\.dismiss) private var dismiss
    

    @State private var amount: String = ""
    @State private var note: String = ""
    @State private var date: Date = Date()
    @State private var showAlert: Bool = false
    
    
    
    var body: some View {
        VStack {
            
            TextField("Enter amount", text: $amount)
                .keyboardType(.decimalPad)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(8)
                .padding()
            
            TextField("Add note", text: $note)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(8)
                .padding()
            
            DatePicker("Select Date", selection: $date, displayedComponents: .date)
                .padding()
            
            Button("Save") {
                // ⑦ ユーザー入力から新しい Expense を作成
                let formatter = DateFormatter()
                formatter.dateStyle = .medium
                let dayString = formatter.string(from: date)
                
                guard !amount.isEmpty else {
                    print("amout:\(amount)")
                    print("Amount must not be empty.")
                    showAlert = true
                    return
                }
                

                let newExpense = Expense(
                    day: dayString,
                    price: "¥\(amount)",
                    note: note
                )
                
                // ⑧ ストアの配列に追加
                store.expenses.append(newExpense)

                // ⑨ 入力画面を閉じる
                dismiss()
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Error"), message: Text("Amount must not be empty."), dismissButton: .default(Text("OK")))
            }
            .buttonStyle(.borderedProminent)
            .padding(.top)
            
        }
        .padding(20)

    }
}

#Preview {
    AddExpenseView()
        .environmentObject(ExpenseStore())
}
