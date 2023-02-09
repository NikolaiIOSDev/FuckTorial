//
//  Coordinator.swift
//  FuckTorial
//
//  Created by Николай Федоров on 25.01.2023.
//

import Foundation
import UIKit

class Coordinator<Value>{
    typealias Coord = (Value) -> Void
    private var coord:Coord?
    
    var value:Value {
        didSet {
            coord?(value)
        }
    }
    
    func binding(coord coordinator: Coord?){
        self.coord = coordinator
    }
    
    init(value: Value) {
        self.value = value
    }

    
}
