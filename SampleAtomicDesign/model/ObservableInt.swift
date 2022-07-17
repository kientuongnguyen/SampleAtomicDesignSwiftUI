//
//  ObservableInt.swift
//  SampleAtomicDesign
//
//  Created by Nguyễn Kiến Tường on 17/07/2022.
//

import Foundation

class ObservableInt: ObservableObject {
    @Published var int: Int
    
    init(int: Int) {
        self.int = int
    }
}
