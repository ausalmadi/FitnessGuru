//
//  ContentView.swift
//  WatchOS Extension
//
//  Created by student on 2021-01-14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            WelcomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                        .bold()
                        .padding()
                    
                }
            SupplementView()
                .tabItem {
                    Image(systemName: "pills")
                    Text("Supplement")
                        .bold()
                        .padding()
                }
            DightView()
                .tabItem {
                    Image(systemName: "f.circle")
                    Text("Dight")
                        .bold()
                        .padding()
                }
            WorkoutView()
                .tabItem {
                    Image(systemName: "figure.walk")
                    Text("WorkOut")
                        .bold()
                        .padding()
                }
            
            
        }.accentColor(.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
