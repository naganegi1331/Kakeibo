//
//  ExpenseStore.swift
//  Kakeibo
//
//  Created by Hiroki Kashihara on 2025/05/11.
//

import Foundation
import SwiftUI

/// A central data store that manages all Expense objects for the app.
final class ExpenseStore: ObservableObject {
    /// List of all expenses shared across the entire app.
    /// Updating this array will automatically refresh any SwiftUI view
    /// that observes `ExpenseStore` thanks to the `@Published` property wrapper.

    
    // この配列が変わると、それを使っている画面が自動で更新される
    @Published var expenses: [Expense] = sampleExpenses
}


