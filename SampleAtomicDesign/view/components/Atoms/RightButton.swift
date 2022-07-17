//
//  RightButton.swift
//  SampleAtomicDesign
//
//  Created by Nguyễn Kiến Tường on 15/07/2022.
//

import SwiftUI

struct RightButton: View {
    var text: String
    var action: () -> Void
    var size = CGSize(width: 60, height: 30)
    var body: some View {
        Button(text) {
            action()
        }
        .frame(width: size.width, height: size.height, alignment: .center)
        .background(Color.blue)
        .cornerRadius(10)
        .foregroundColor(Color.white)
        .buttonStyle(.borderless)
        .font(.system(size: 20, weight: .bold, design: .default))
    }
}

struct RightButton_Previews: PreviewProvider {
    static var previews: some View {
        RightButton(text: "+1") {}
    }
}
