//
//  GridScreenTemplate.swift
//  SampleAtomicDesign
//
//  Created by Nguyễn Kiến Tường on 17/07/2022.
//

import SwiftUI

struct GridScreenTemplate: View {
    @ObservedObject var grid: SampleGridObject
    var body: some View {
        VStack {
            ScreenTitleText(text: "Grid Screen")
            gridView
            Spacer()
        }
    }
    
    private func getGridColumns() -> [GridItem] {
        grid.grid[0].map { _ in
            GridItem(.flexible())
        }
    }
    
    private var gridView: some View {
        LazyVGrid(columns: getGridColumns()) {
            ForEach(Array(grid.grid.enumerated()), id: \.offset) { rowIndex, row in
                ForEach(Array(row.enumerated()), id: \.offset) { columnIndex, item in
                    GridItemLabel(lable: grid.grid[rowIndex][columnIndex])
                }
            }
        }
    }
    
}

struct GridScreenTemplate_Previews: PreviewProvider {
    static var previews: some View {
        GridScreenTemplate(grid: SampleGridObject(grid: [
            ["123", "111", "321", ""],
            ["", "", "", ""],
            ["", "", "100", ""],
            ["", "", "222", "432"]
        ]))
    }
}
