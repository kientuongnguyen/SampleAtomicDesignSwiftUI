//
//  HomeScreenTemplate.swift
//  SampleAtomicDesign
//
//  Created by Nguyễn Kiến Tường on 17/07/2022.
//

import SwiftUI

struct HomeScreenTemplate: View {
    var body: some View {
        VStack {
            HomeButton(text: "Main Screen", destination: TableScreen())
            HomeButton(text: "Grid Screen", destination: GridScreen())
        }
    }
}

struct HomeScreenTemplate_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenTemplate()
    }
}
