//
//  SampleGridObject.swift
//  SampleAtomicDesign
//
//  Created by Nguyễn Kiến Tường on 17/07/2022.
//

import Foundation

class SampleGridObject: ObservableObject {
    @Published var grid: [[ObservableString]]
    
    init(grid: [[String]]) {
        self.grid = grid.map { row in
            row.map { string in
                ObservableString(string: string)
            }
        }
    }
}
