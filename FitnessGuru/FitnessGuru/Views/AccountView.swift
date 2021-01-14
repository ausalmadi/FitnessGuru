//
//  AccountView.swift
//  DocCreater
//
//  Created by student on 2021-01-11.
//

import SwiftUI

struct AccountView: View {
    @StateObject var viewModel = AccountViewModel()

    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Personal Info")){
                    TextField("First Name", text: $viewModel.user.firstName)
                    TextField("Last Name", text: $viewModel.user.lastName)
                    TextField("Email", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    Button{
                        
                    }label:{
                        Text("Save Changes")
                    }
                }
                Section(header: Text("Measurement")){
                    TextField("Hight", text: $viewModel.user.hight)
                    TextField("wight", text: $viewModel.user.wight)
                    TextField("Age", text:$viewModel.user.age)
                    Button{
                        viewModel.saveChanges()
                    }label:{
                        Text("Save Changes")
                    }
                    
                }.navigationTitle("Account Info")
                onAppear{
                    viewModel.retrieveUser()
                }
            }
        }
    }
    
    struct AccountView_Previews: PreviewProvider {
        static var previews: some View {
            AccountView()
        }
    }
}
