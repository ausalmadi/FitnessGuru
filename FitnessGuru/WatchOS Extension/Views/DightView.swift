//
//  DightView.swift
//  DocCreater
//
//  Created by student on 2021-01-13.
//

import SwiftUI

struct DightView: View {
    var body: some View {
        NavigationView{
            List(MockData.dightList){supplement in
                NavigationLink(destination: DetailView(dataModel: supplement)){
                    VStack{
                        Image("\(supplement.imageName)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .shadow(radius: 10 )
                            .padding()
                        
                        
                        Spacer()
                        VStack{
                            Text(supplement.name)
                                .font(.footnote)
                                .fontWeight(.medium)
                                .padding()
                                .multilineTextAlignment(.center)
                            
                        }
                        
                    }
                }
                
                
            }
            .listStyle(CarouselListStyle())
            .navigationBarTitle("Dight")
            .padding()
        }
    }
}

struct DightView_Previews: PreviewProvider {
    static var previews: some View {
        DightView()
    }
}
