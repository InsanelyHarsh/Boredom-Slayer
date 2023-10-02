//
//  ActivityModel.swift
//  Boredom-Slayer-iOS
//
//  Created by Harsh Yadav on 02/10/23.
//

import Foundation

struct ActivityModel:Decodable{
    let activityModelId:Int;
    let activityName:String;
    
    init(activityModelId: Int, activityName: String) {
        self.activityModelId = activityModelId
        self.activityName = activityName
    }
}
