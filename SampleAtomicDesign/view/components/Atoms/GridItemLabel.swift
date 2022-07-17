//
//  GridItemLabel.swift
//  SampleAtomicDesign
//
//  Created by Nguyễn Kiến Tường on 17/07/2022.
//

import SwiftUI

struct GridItemLabel: View {
    @ObservedObject var lable: ObservableString
    
    var body: some View {
        Text(lable.string)
            .font(.system(size: 20, weight: .bold, design: .rounded))
            .frame(width: 50, height: 50)
            .padding()
            .foregroundColor(Color(red: 0.8, green: 0.8, blue: 0.8, opacity: 1))
            .background(getColor())
            .cornerRadius(10)
    }
    
    private func getColor() -> Color {
        if (lable.string == "") {
            return Color(red: 0.2, green: 0.2, blue: 0.2, opacity: 0.8)
        }
        let r = Array(lable.string)[0].wholeNumberValue ?? 0
        let g = Array(lable.string)[1].wholeNumberValue ?? 0
        let b = Array(lable.string)[2].wholeNumberValue ?? 0
        
        return Color(red: Double(r)/10, green: Double(g)/10, blue: Double(b)/10, opacity: 0.9)
    }
}

struct GridItemLabel_Previews: PreviewProvider {
    static var previews: some View {
        GridItemLabel(lable: ObservableString(string: ""))
    }
}
