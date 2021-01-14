//
//  WorkoutView.swift
//  DocCreater
//
//  Created by student on 2021-01-13.
//

import SwiftUI

struct WorkoutView: View {
    var body: some View {
        NavigationView{
            List(MockData.workoutList){supplement in
                NavigationLink(destination: DetailView(dataModel: supplement)){
                    VStack{
                        Image("\(supplement.imageName)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
                        
                        
                        Spacer()
                        VStack{
                            Text(supplement.name)
                                .font(.caption2)
                                .fontWeight(.medium)
                                .multilineTextAlignment(.center)
                                .padding()
                            
                        }
                        
                    }
                }
            }.accentColor(Color(.black))
            .listStyle(CarouselListStyle())
            .navigationBarTitle("Workout")
            .padding()
        }
    }
}

struct WorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView()
    }
    
}
