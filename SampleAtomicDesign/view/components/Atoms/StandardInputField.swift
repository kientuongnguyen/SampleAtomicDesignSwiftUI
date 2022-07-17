//
//  StandardInputField.swift
//  SampleAtomicDesign
//
//  Created by Nguyễn Kiến Tường on 17/07/2022.
//

import SwiftUI

struct StandardInputField: View {
    @ObservedObject var target: SampleObject
    var body: some View {
        TextField("input...", text: $target.stringValue)
            .padding()
            .background(Color(red: 0.2, green: 0, blue: 0.2, opacity: 0.3))
            .cornerRadius(10)
    }
}

struct StandardInputField_Previews: PreviewProvider {
    static var previews: some View {
        StandardInputField(target: SampleObject(string: "", double: 0.0))
    }
}
