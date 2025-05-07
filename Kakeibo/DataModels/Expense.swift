//
//  Expense.swift
//  Kakeibo
//
//  Created by Hiroki Kashihara on 2025/05/07.
//

import Foundation

struct Expense: Identifiable {
    let id = UUID()
    let day: String
    let price: String
    let note: String

}


//グローバル定数
let sampleExpenses: [Expense] = [
//    Expense(day: "April 1", price: "$12", note: "Lunch"),
//    Expense(day: "April 2", price: "$40", note: "Groceries"),
//    Expense(day: "April 3", price: "$7",  note: "Coffee"),
]

