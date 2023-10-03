//
//  HomeViewModel.swift
//  Boredom-Slayer-iOS
//
//  Created by Harsh Yadav on 02/10/23.
//

import Foundation

class HomeViewModel:ObservableObject{
    private let networking:Networking = Networking()
    
    @Published
    var selectedCategory:CategoryModel? = nil
    
    @Published
    var activity:ActivityModel? = nil
    
    @Published
    var categoryList:[CategoryModel] = []
    
//    func generateActivity(){
//        networking.getJson(type: ActivityModel.self,url: "http://localhost:8080/generate") { result in
//            switch result {
//            case .success(let success):
//                DispatchQueue.main.async {
//                    self.activity = success
//                }
//            case .failure(let failure):
//                print(failure)
//            }
//        }
//    }
    
    
    func getActivityFor(category:CategoryModel?){
        let categoryID:Int? = category?.categoryID
        
        var baseURL = "http://localhost:8080/generate"
        if let categoryID = categoryID{
            baseURL += "/\(categoryID)"
        }
        networking.getJson(type: ActivityModel.self,url: baseURL) { result in
            switch result {
            case .success(let success):
                DispatchQueue.main.async {
                    self.activity = success
                }
            case .failure(let failure):
                print(failure)
            }
        }
    }
    
    
    func getAllCategories(){
        networking.getJson(type: [CategoryModel].self,url: "http://localhost:8080/api/category") { result in
            switch result {
            case .success(let success):
                DispatchQueue.main.async {
                    self.categoryList = success
                }
            case .failure(let failure):
                print(failure)
            }
        }
    }
}
