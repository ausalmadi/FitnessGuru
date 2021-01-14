//
//  SwiftUIView.swift
//  DocCreater
//
//  Created by student on 2021-01-09.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        ZStack{
            BackgroundLayout(firstColer: Color("firstColor"),
                             secColer:   Color("secColor")  )
            
            VStack{
                Title(title: " 🏋️‍♂️Fitness Guru")
                Spacer()
                
                IconImage(icanName: "bolt.heart.fill")
                Spacer()
                
                WelcomeText(welcomeText: "Welcome Home")
                Spacer()
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomePage()
            .preferredColorScheme(.light)
    }
}

struct BackgroundLayout: View {
    var firstColer:Color
    var secColer:Color
    var body: some View {
        VStack{
            LinearGradient(gradient: Gradient(colors: [firstColer, secColer]),
                           startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct Title: View {
    var title:String
    var body: some View {
        VStack{
            Text(title)
                .bold()
                .font(.largeTitle)
                .foregroundColor(.black)
                .italic()
                .padding()
        }
    }
}

struct IconImage: View {
    var icanName:String
    var body: some View {
        VStack(){
            Image(systemName: icanName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 400, height: 100)
                .foregroundColor(.red)
                .padding()
        }
    }
}

struct WelcomeText: View {
    var welcomeText:String
    var body: some View {
        VStack{
            Text(welcomeText)
                .bold()
                .foregroundColor(.black)
                .font(.title)
                .italic()
                .padding()
        }
    }
}
