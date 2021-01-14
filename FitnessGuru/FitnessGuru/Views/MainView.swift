//
//  ContentView.swift
//  FitnessGuru
//
//  Created by student on 2021-01-14.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            WelcomePage()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                        .bold()
                        .padding()
                    
                }
            Supplement()
                .tabItem {
                    Image(systemName: "pills")
                    Text("Supplement")
                        .bold()
                        .padding()
                }
            Dight()
                .tabItem {
                    Image(systemName: "f.circle")
                    Text("Dight")
                        .bold()
                        .padding()
                }
            WorkOut()
                .tabItem {
                    Image(systemName: "figure.walk")
                    Text("WorkOut")
                        .bold()
                        .padding()
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Account")
                        .bold()
                        .padding()
                }
            
            
        }.accentColor(.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
