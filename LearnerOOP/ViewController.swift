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
    var facilitatorInstance: FacilitatorModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    learnerInstance =
        LearnerModel(nameLearner: "SG", ageLearner: 20, genderLearner: "Male", imageProfileLearner: "")
    facilitatorInstance = FacilitatorModel(nameFacilitator: "David", ageFacilitator: 24, genderFacilitator: "Male", imageProfileFacilitator: "", perkFacilitator: "Unlimited Starbuck on Friday")
        updateUI()
    }

    func updateUI(){
        if let instance = facilitatorInstance {
            namaLabel.text = instance.name
            umurLabel.text = "\(instance.age)"
            genderLabel.text = instance.gender
        }
    }

    @IBAction func buttonDiPencet(_ sender: UIButton) {
        if let instance = facilitatorInstance {
            instance.increaseAge()
            instance.coachMentee()
            updateUI()
        }
        
    }
    
}

