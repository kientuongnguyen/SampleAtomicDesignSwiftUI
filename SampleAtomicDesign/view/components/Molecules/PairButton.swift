//
//  PairButton.swift
//  SampleAtomicDesign
//
//  Created by Nguyễn Kiến Tường on 15/07/2022.
//

import SwiftUI

struct PairButton: View {
    @ObservedObject var target: SampleObject
    var actionType: Action = .add
    var amount: Double
    
    private func getLeftButtonText() -> String {
        switch actionType {
        case .add:
            return "-\(self.amount)"
        case .multiple:
            return "/\(self.amount)"
        }
    }

    private func getRightButtonText() -> String {
        switch actionType {
        case .add:
            return "+\(self.amount)"
        case .multiple:
            return "*\(self.amount)"
        }
    }

    
    private func leftAction() {
        switch actionType {
        case .add:
            target.doubleValue -= amount
        case .multiple:
            target.doubleValue /= amount
        }
    }

    private func rightAction() {
        switch actionType {
        case .add:
            target.doubleValue += amount
        case .multiple:
            target.doubleValue *= amount
        }
    }

    var body: some View {
        HStack {
            LeftButton(text: getLeftButtonText(), action: leftAction)
            RightButton(text: getRightButtonText(), action: rightAction)
        }
        .padding()
        .background(Color(red: 0, green: 0.2, blue: 0.2, opacity: 0.3))
        .border(.gray, width: 2)
    }
}

struct PairButton_Previews: PreviewProvider {
    static var previews: some View {
        PairButton(target: SampleObject(string: "", double: 1.0), actionType: .add, amount: 10)
    }
}
