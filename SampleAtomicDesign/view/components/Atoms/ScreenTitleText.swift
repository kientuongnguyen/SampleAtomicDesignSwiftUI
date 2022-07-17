//
//  ScreenTitleText.swift
//  SampleAtomicDesign
//
//  Created by Nguyễn Kiến Tường on 17/07/2022.
//

import SwiftUI

struct ScreenTitleText: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.system(size: 40, weight: .bold, design: .rounded))
    }
}

struct ScreenTitleText_Previews: PreviewProvider {
    static var previews: some View {
        ScreenTitleText(text: "Screen Title")
    }
}
