//
//  HomeView.swift
//  Boredom-Slayer-iOS
//
//  Created by Harsh Yadav on 02/10/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var homeVM:HomeViewModel = HomeViewModel()
    var body: some View {
        VStack{
            if let activity = homeVM.activity{
                Text(activity.activityName)
            }
            
            Button("Generate") {
                self.homeVM.generateActivity()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
