//
//  TableCell.swift
//  SampleAtomicDesign
//
//  Created by Nguyễn Kiến Tường on 17/07/2022.
//

import SwiftUI

struct TableCell: View {
    @ObservedObject var target: SampleObject
    var cellTitle: String
    var body: some View {
        HStack {
            inputGroup
            buttonGroup
        }
        .padding()
        .background(Color(red: 0, green: 0.2, blue: 0.2, opacity: 0.1))
        .shadow(color: .gray, radius: 10, x: 10, y: 10)
    }
    
    private var inputGroup: some View {
        VStack {
            StandardText(content: cellTitle)
            StandardInputField(target: target)
        }
    }
    
    private var buttonGroup: some View {
        VStack {
            PairButton(target: target, actionType: .add, amount: 1)
            PairButton(target: target, actionType: .multiple, amount: 2)
        }
    }
}

struct TableCell_Previews: PreviewProvider {
    static var previews: some View {
        TableCell(target: SampleObject(string: "", double: 0.0), cellTitle: "Sample Cell")
    }
}
