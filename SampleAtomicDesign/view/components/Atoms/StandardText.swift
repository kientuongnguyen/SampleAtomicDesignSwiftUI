//
//  StandardText.swift
//  SampleAtomicDesign
//
//  Created by Nguyễn Kiến Tường on 15/07/2022.
//

import SwiftUI

struct StandardText: View {
    var content: String
    var body: some View {
        Text(content)
            .font(.system(size: 20, weight: .bold, design: .default))
    }
}

struct StandardText_Previews: PreviewProvider {
    static var previews: some View {
        StandardText(content: "Hello")
    }
}
