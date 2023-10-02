//
//  ActivityModel.swift
//  Boredom-Slayer-iOS
//
//  Created by Harsh Yadav on 02/10/23.
//

import Foundation

struct ActivityModel:Decodable{
        let activityModelID: Int
        let activityName, activityDescription: String
        let categoryModel: CategoryModel

        enum CodingKeys: String, CodingKey {
            case activityModelID = "activityModelId"
            case activityName, activityDescription, categoryModel
        }
    }


