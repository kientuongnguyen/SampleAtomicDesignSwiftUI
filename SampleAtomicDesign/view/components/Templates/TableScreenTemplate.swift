//
//  MainScreenTemplate.swift
//  SampleAtomicDesign
//
//  Created by Nguyễn Kiến Tường on 17/07/2022.
//

import SwiftUI

struct TableScreenTemplate: View {
    @ObservedObject var list: SampleListObject
    
    var body: some View {
        VStack(alignment: .leading) {
            ScreenTitleText(text: "Table Screen")
            listView
            Spacer()
        }
    }
    
    private let listColumns = [
            GridItem(.flexible())
        ]
    
    private var listView: some View {
        LazyVGrid(columns: listColumns) {
            ForEach(Array(list.objects.enumerated()), id: \.offset) {index, object in
                TableCell(target: object, cellTitle: "Cell \(index)")
            }
        }
    }
}

struct MainScreenTemplate_Previews: PreviewProvider {
    static var previews: some View {
        TableScreenTemplate(list: SampleListObject(objects: [
            SampleObject(string: "abc", double: 1),
            SampleObject(string: "xyz", double: 2)

        ]))
    }
}
