//
//  CategoryModel.swift
//  Boredom-Slayer-iOS
//
//  Created by Harsh Yadav on 02/10/23.
//

import Foundation
struct CategoryModel: Codable {
    let categoryID: Int
    let categoryName: String

    enum CodingKeys: String, CodingKey {
        case categoryID = "category_id"
        case categoryName = "category_name"
    }
}
