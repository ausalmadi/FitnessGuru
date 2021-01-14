//
//  AccountViewModel.swift
//  DocCreater
//
//  Created by student on 2021-01-11.
//

import SwiftUI
@available(OSX 11.0, *)
@available(OSX 11.0, *)
final class AccountViewModel:ObservableObject {
    @AppStorage("user") private var userData:Data?
    @Published var user = User()
    
    func saveChanges(){
        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            print("data saved")
        } catch  {
            print(error.localizedDescription)
        }
    }
    func retrieveUser(){
        guard let userData = userData  else { return }
        
        do {
            user = try JSONDecoder().decode(User.self, from: userData)
            print("data saved")
        } catch  {
            print(error.localizedDescription)
        }
    }
    
}
