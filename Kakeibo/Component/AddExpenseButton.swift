//
//  AddExpenseButton.swift
//  Kakeibo
//
//  Created by Hiroki Kashihara on 2025/05/11.
//

import SwiftUI

struct AddExpenseButton: View {
    @Binding var isActive: Bool  // 遷移トリガー用のバインディング変数

    var body: some View {
        
        Button {
            isActive = true  // ボタンを押すと true にして画面遷移を起動
        } label: {
            Image(systemName: "plus.circle.fill")
                .resizable()
                .frame(width: 70, height: 70)
                .foregroundColor(.blue)
                .shadow(radius: 5)
        }

    }
}


struct StatefulPreviewWrapper<Value, Content: View>: View {
    @State var value: Value
    var content: (Binding<Value>) -> Content

    init(_ value: Value, content: @escaping (Binding<Value>) -> Content) {
        _value = State(initialValue: value)
        self.content = content
    }

    var body: some View {
        content($value)
    }
}



#Preview {
    StatefulPreviewWrapper(false) { isActive in
        AddExpenseButton(isActive: isActive)
    }
}
