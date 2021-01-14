//
//  Dight.swift
//  DocCreater
//
//  Created by student on 2021-01-09.
//

import SwiftUI

struct Dight: View {
    var body: some View {
        NavigationView{
            List(MockData.dightList){supplement in
                NavigationLink(destination: DetailView(dataModel: supplement)){
                    HStack{
                        Image("\(supplement.imageName)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 120, height: 90)
                            .shadow(radius: 10 )
                        
                        Spacer()
                        VStack{
                            Text(supplement.name)
                                .font(.title2)
                                .fontWeight(.medium)
                                .padding()
                            
                        }
                    }
                }
            }
            .navigationBarTitle("Dight")
            .padding()
        }
    }
}

struct Dight_Previews: PreviewProvider {
    static var previews: some View {
        Dight()
    }
}
