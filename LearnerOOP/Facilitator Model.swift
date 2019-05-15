//
//  Facilitator Model.swift
//  LearnerOOP
//
//  Created by Steven Gunawan on 15/05/19.
//  Copyright © 2019 Steven Gunawan. All rights reserved.
//

import Foundation

class FacilitatorModel: LearnerModel {
    var perk: String
    
    init(nameFacilitator: String, ageFacilitator: Int, genderFacilitator: String, imageProfileFacilitator: String, perkFacilitator: String) {
        perk = perkFacilitator
        super.init(nameLearner: nameFacilitator, ageLearner: ageFacilitator, genderLearner: genderFacilitator, imageProfileLearner: imageProfileFacilitator)
    }
    func coachMentee() {
        print("coaching mentee")
    }
}
