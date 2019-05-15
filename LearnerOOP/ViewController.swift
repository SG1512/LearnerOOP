//
//  ViewController.swift
//  LearnerOOP
//
//  Created by Steven Gunawan on 15/05/19.
//  Copyright © 2019 Steven Gunawan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var namaLabel: UILabel!
    @IBOutlet weak var umurLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
     
    
    
    var learnerInstance: LearnerModel? // You just create copy of LearnerModerl
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    learnerInstance =
        LearnerModel(nameLearner: "SG", ageLearner: 20, genderLearner: "Male", imageProfileLearner: "")
    updateUI()
    }

    func updateUI(){
        if let instance = learnerInstance {
            namaLabel.text = instance.name
            umurLabel.text = "\(instance.age)"
            genderLabel.text = instance.gender
        }
    }

    @IBAction func buttonDiPencet(_ sender: UIButton) {
        if let instance = learnerInstance {
            instance.increaseAge()
            updateUI()
        }
    }
    
}

