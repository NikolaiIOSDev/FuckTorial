//
//  ViewElements .swift
//  FuckTorial
//
//  Created by Николай Федоров on 25.01.2023.
//

import UIKit

class ViewElements:UIView{
    
    var modelView = MainViewModel()
    
    let label:UILabel = {
       let label = UILabel()
        label.font = UIFont(name: "Impact", size: 28)
        label.textColor = .black
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "Рандомно подберем 3 цифры, а для чего цифры - решать Вам 🫢"
        
        return label
    }()
    
    
    let button:UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Go CVC 😅", for: .normal)
        button.backgroundColor = .black
        button.tintColor = .white
        button.layer.cornerRadius = 5
        
        return button
    }()
    
    
  
    let  resultLB:UILabel = {
       let label = UILabel()
        label.font = UIFont(name: "Impact", size: 20)
        label.text = ""
        label.textAlignment = .center
        label.textColor = .red
        
        return label
    }()
    
lazy var stackView: UIStackView = {
       let stackView = UIStackView()
        stackView.alignment = .center
        stackView.distribution = .fillProportionally
        stackView.spacing = 40
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(button)
        stackView.addArrangedSubview(resultLB)
        
        return stackView
    }()
    
    
    
}
