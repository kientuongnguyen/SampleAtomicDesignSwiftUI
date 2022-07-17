//
//  SampleObject.swift
//  SampleAtomicDesign
//
//  Created by Nguyễn Kiến Tường on 17/07/2022.
//

import Foundation


class SampleObject: ObservableObject {
    @Published var stringValue: String
    @Published var doubleValue: Double
    
    init(string: String, double: Double) {
        self.stringValue = string
        self.doubleValue = double
    }
}
