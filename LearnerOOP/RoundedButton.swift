//
//  RoundedButton.swift
//  LearnerOOP
//
//  Created by Steven Gunawan on 15/05/19.
//  Copyright © 2019 Steven Gunawan. All rights reserved.
//

import UIKit

class RoundedButton: UIButton {
    override func awakeFromNib() {
        layer.borderWidth = 1
        layer.borderColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        layer.cornerRadius = 15
    }
   

}
