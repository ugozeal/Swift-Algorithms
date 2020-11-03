//
//  ViewController.swift
//  DependencyInjection
//
//  Created by David U. Okonkwo on 9/22/20.
//

import UIKit

class ViewController: UIViewController {
    
    var someService: SomeService
    init(someService:SomeService) {
        self.someService = someService
        super.init(nibName: nil, bundle: nil)
        view.backgroundColor = .blue
    }
    
    required init? (coder aDecoder: NSCoder) {
        fatalError ("init (coder :) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        SomeService.shared.doStuff()
        someService.doStuff()
    }


}

