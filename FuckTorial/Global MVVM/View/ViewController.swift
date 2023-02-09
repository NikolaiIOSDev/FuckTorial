//
//  ViewController.swift
//  FuckTorial
//
//  Created by Николай Федоров on 25.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var modelView = MainViewModel()
    var elements = ViewElements()



    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(elements.stackView)
        
        elements.button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        

        NSLayoutConstraint.activate([
            elements.stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            elements.stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            elements.label.widthAnchor.constraint(equalToConstant: 360),
            elements.resultLB.widthAnchor.constraint(equalToConstant: 360)
        ])
                
        binding()
    }
    

    @objc func tap(){
        modelView.randomValue()
    }

    func binding(){
        modelView.results.binding { coord in
            self.elements.resultLB.text = coord
        }
    }
    
    
    

}

