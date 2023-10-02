//
//  HomeView.swift
//  Boredom-Slayer-iOS
//
//  Created by Harsh Yadav on 02/10/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var homeVM:HomeViewModel = HomeViewModel()
    
    @State var showingConfirmation:Bool = false
    @State var selectedCategory:CategoryModel? = nil
    
    var body: some View {
        NavigationStack {
            VStack{
                if let activity = homeVM.activity{
                    VStack(alignment: .leading) {
                        Text(activity.activityName)
                        .font(.title)
                        .bold()
                        
                        Text(activity.activityDescription)
                            .font(.callout)
                            .foregroundColor(.gray)
                        
                        Text(activity.categoryModel.categoryName)
                            .font(.body)
                    }
                    .frame(maxWidth: .infinity)
                }
                
                Spacer()
                
                HStack{
                    
                    Button("Generate") {
                        self.homeVM.generateActivity()
                    }
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                    .padding()
                    .background{
                        Color.orange.cornerRadius(10)
                    }
                    
                    Button {
                        self.showingConfirmation.toggle()
                    } label: {
                        Image(systemName: "square.3.layers.3d")
                    }

                }.padding(.horizontal,60)
                
            }
            .navigationTitle("Boredom Slayer")
            .navigationBarTitleDisplayMode(.inline)
        }
        .onAppear{
            self.homeVM.getAllCategories()
        }
        .confirmationDialog("Select Category", isPresented: $showingConfirmation) {
            ForEach(homeVM.categoryList,id:\.categoryID){ category in
                Button(category.categoryName) {
                    self.homeVM.getActivityFor(category: category)
                }
            }
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Select Category")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
