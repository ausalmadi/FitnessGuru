//
//  DetailView.swift
//  DocCreater
//
//  Created by student on 2021-01-10.
//

import SwiftUI

struct DetailView: View {
    let dataModel: DataModel
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Image("\(dataModel.imageName)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(10)
                        .shadow(radius: 20 )
                        .padding()
                }
                Spacer()
                VStack{
                    Text(dataModel.name)
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding()
                    
                    Text(dataModel.description)
                        .font(.body)
                        .fontWeight(.bold)
                        .padding()
                    
                }
                
                Link(destination: URL(string: dataModel.URL) ?? URL(string: "www.apple.com")!, label: {
                    Text("Learn More")
                        .font(.title)
                        .fontWeight(.semibold)
                        .frame(width: 260, height: 50)
                        .foregroundColor(.white)
                        .background(Color(.red))
                        .cornerRadius(10)
                        .padding()
                })
                
                
                Spacer()
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(dataModel : DataModel(name: "D", imageName: "D", description: "test", URL: ""))
            .preferredColorScheme(.light)
    }
}
