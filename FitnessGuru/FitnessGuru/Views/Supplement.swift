//
//  Supplement.swift
//  DocCreater
//
//  Created by student on 2021-01-09.
//

import SwiftUI

struct Supplement: View {
    var body: some View {
        NavigationView{
            List(MockData.supplementList){supplement in
                NavigationLink(destination: DetailView(dataModel: supplement)){
                    HStack{
                        Image("\(supplement.imageName)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 120, height: 90)
                            .shadow(radius: 5 )
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
            .navigationBarTitle("Supplement")
            .padding()
        }
    }
    
    struct Supplement_Previews: PreviewProvider {
        static var previews: some View {
            Supplement()
        }
    }
}
