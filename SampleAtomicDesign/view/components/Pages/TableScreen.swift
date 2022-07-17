//
//  MainScreen.swift
//  SampleAtomicDesign
//
//  Created by Nguyễn Kiến Tường on 17/07/2022.
//

import SwiftUI

struct TableScreen: View {
    @StateObject var list = SampleListObject(objects: [
        SampleObject(string: "Cell 1", double: 1),
        SampleObject(string: "Cell 2", double: 1),
        SampleObject(string: "Cell 3", double: 1)
    ])
    var body: some View {
        TableScreenTemplate(list: list)
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        TableScreen()
    }
}
