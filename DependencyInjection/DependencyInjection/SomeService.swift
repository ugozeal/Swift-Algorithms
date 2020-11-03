//
//  SomeService.swift
//  DependencyInjection
//
//  Created by David U. Okonkwo on 9/22/20.
//

import Foundation

class SomeService {
    private init() {}
    static let shared = SomeService()
    
    func doStuff(){
        print("Did Stuff")
    }
}
