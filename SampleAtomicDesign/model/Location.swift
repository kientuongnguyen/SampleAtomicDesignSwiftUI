//
//  Location.swift
//  SampleAtomicDesign
//
//  Created by Nguyễn Kiến Tường on 17/07/2022.
//

import Foundation

class Location: ObservableObject {
    @Published var x: Int
    @Published var y: Int
    
    init (x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}
