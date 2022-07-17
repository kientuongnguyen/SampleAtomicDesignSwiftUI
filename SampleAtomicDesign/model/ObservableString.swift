//
//  ObservableString.swift
//  SampleAtomicDesign
//
//  Created by Nguyễn Kiến Tường on 17/07/2022.
//

import Foundation

class ObservableString: ObservableObject {
    @Published var string: String
    
    init(string: String) {
        self.string = string
    }
}
