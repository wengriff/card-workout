//
//  CWButton.swift
//  cardWorkout-Programmatic
//
//  Created by Adrian Somor on 23/07/2023.
//

import UIKit

class CWButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(color: UIColor, title: String, systemImageName: String) {
        super.init(frame: .zero) // .zero is shortcut for CGRect(x: 0, y: 0, width: 0, height: 0)
        
        configuration = .tinted()
        configuration?.title = title
        configuration?.baseForegroundColor = color
        configuration?.baseBackgroundColor = color
        configuration?.cornerStyle = .medium
        configuration?.image = UIImage(systemName: systemImageName)
        configuration?.imagePadding = 4
        configuration?.imagePlacement = .trailing
        
        
        translatesAutoresizingMaskIntoConstraints = false // use autolayout

    }
    
}
