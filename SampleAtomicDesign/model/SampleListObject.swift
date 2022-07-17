//
//  SampleListObject.swift
//  SampleAtomicDesign
//
//  Created by Nguyễn Kiến Tường on 17/07/2022.
//

import Foundation

class SampleListObject: ObservableObject {
    @Published var objects: [SampleObject]
    
    init(objects: [SampleObject]) {
        self.objects = objects
    }
}
