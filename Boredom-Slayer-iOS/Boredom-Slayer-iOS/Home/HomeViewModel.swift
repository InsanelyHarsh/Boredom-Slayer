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
    var activity:ActivityModel? = nil
    
    
    func generateActivity(){
        networking.getJson(type: ActivityModel.self,url: "http://localhost:8080/generate") { result in
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
    
}
