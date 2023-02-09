//
//  MainViewModel.swift
//  FuckTorial
//
//  Created by Николай Федоров on 09.02.2023.
//

import Foundation


class MainViewModel{
    public var results = Coordinator(value: "")
    
    
    public func randomValue() {
        results.value = String(Int.random(in: 0...999))
    }
    
    
}
