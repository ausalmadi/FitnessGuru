//
//  detailView.swift
//  watchOS Extension
//
//  Created by student on 2021-01-13.
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
                        .frame(width: 100, height: 50)
                        .cornerRadius(10)
                        .shadow(radius: 20 )
                        .padding()
                }
                Spacer()
                VStack{
                    Text(dataModel.name)
                        .font(.caption2)
                        .padding()
                    
                }
                
                Link(destination: URL(string: dataModel.URL) ?? URL(string: "www.apple.com")!, label: {
                    Text("Learn More")
                        .font(.caption2)
                        .frame(width: 180, height: 60)
                        .foregroundColor(.white)
                        .background(Color(.red))
                        .cornerRadius(10)
                    
                })
                
                Spacer()
            }
        }
    }
}

struct detailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(dataModel: DataModel.init(name: "D", imageName: "D", description: "RE", URL: ""))
    }
}
