//
//  HomeView.swift
//  Boredom-Slayer-iOS
//
//  Created by Harsh Yadav on 02/10/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var homeVM:HomeViewModel = HomeViewModel()
    
    @State private var showingConfirmation:Bool = false
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading){
                if let activity = homeVM.activity{
                    VStack(alignment:.leading,spacing: 10){
                        VStack(alignment:.leading){
                            Text(activity.activityName)
                                .fontDesign(.rounded)
                            .font(.headline)
                            .bold()
                            
                            Text(activity.categoryModel.categoryName)
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        
                        Text(activity.activityDescription)
                            .font(.subheadline)
                    }
                }
                
                Spacer()
                
                HStack{
                    
                    Button {
                        self.homeVM.getActivityFor(category: homeVM.selectedCategory)
                    } label: {
                        Text(homeVM.selectedCategory != nil ? homeVM.selectedCategory!.categoryName : "Generate")
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                            .padding()
                            .background{
                                Color.orange.cornerRadius(10)
                            }
                    }
                    
                    Button {
                        self.showingConfirmation.toggle()
                    } label: {
                        Image(systemName: "square.3.layers.3d")
                    }

                }.padding(.horizontal,60)
                
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal)
            .navigationTitle("Boredom Slayer")
            .navigationBarTitleDisplayMode(.inline)
        }
        
        .onAppear{
            self.homeVM.getAllCategories()
        }
        
        .onChange(of: self.showingConfirmation, perform: { newValue in
            if(newValue && self.homeVM.categoryList.isEmpty){
                self.homeVM.getAllCategories()
            }
        })
        
        .confirmationDialog("Select Category", isPresented: $showingConfirmation) {
            ForEach(homeVM.categoryList,id:\.categoryID){ category in
                Button(category.categoryName) {
                    
                    self.homeVM.selectedCategory = category
                }
            }
            Button("Cancel", role: .cancel) { self.homeVM.selectedCategory = nil }
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
