//
//  HomeButton.swift
//  SampleAtomicDesign
//
//  Created by Nguyễn Kiến Tường on 17/07/2022.
//

import SwiftUI

struct HomeButton<DestinationType: View>: View {
    var text: String
    var destination: DestinationType
    var body: some View {
        NavigationLink(destination: destination) {
            Text(text)
                .frame(width: 300, height: 80, alignment: .center)
                .font(.system(size: 20, weight: .bold, design: .monospaced))
                .foregroundColor(.white)
                .background(Color(red: 0.1, green: 0, blue: 0.9, opacity: 1))
                .shadow(color: .cyan, radius: 10, x: 10, y: 10)
                .cornerRadius(20)
        }
    }
}

struct HomeButton_Previews: PreviewProvider {
    static var previews: some View {
        HomeButton(text: "Main", destination: Text("a"))
    }
}
