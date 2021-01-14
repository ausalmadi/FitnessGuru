//
//  WorkOut.swift
//  DocCreater
//
//  Created by student on 2021-01-09.
//

import SwiftUI

struct WorkOut: View {
    var body: some View {
        NavigationView{
            List(MockData.workoutList){supplement in
                NavigationLink(destination: DetailView(dataModel: supplement)){
                    HStack{
                        Image("\(supplement.imageName)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 120, height: 90)
                        
                        Spacer()
                        VStack{
                            Text(supplement.name)
                                .font(.title2)
                                .fontWeight(.medium)
                                .padding()
                            
                        }
                        
                    }
                }
            }.accentColor(Color(.black))
            .navigationBarTitle("Workout")
            .padding()
        }
    }
}

struct WorkOut_Previews: PreviewProvider {
    static var previews: some View {
        WorkOut()
    }
}
