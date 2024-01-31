//
//  Onboarding.swift
//  littleLemon
//
//  Created by Jon Spight on 1/31/24.
//

import SwiftUI

let kFirstName = "first name key"
let kLastName = "last name key"
let kEmail = "email key"

struct OnboardingView: View {
    
    @State var firstName : String = ""
    @State var lastName: String = ""
    @State var email: String = ""
    @State var isLoggedIn = false
    
    var body: some View {
        NavigationView {
            VStack {

                NavigationLink(destination: HomeView(), isActive: $isLoggedIn){
                    EmptyView()
                }
                TextField("First Name:", text: $firstName)
                TextField("Last Name:", text: $lastName)
                TextField("Email:", text: $email)
                Button("Register") {
                    //IDEA - add a check to validate email address!
                    if (!firstName.isEmpty &&
                        !lastName.isEmpty &&
                        !email.isEmpty ){
                        UserDefaults.standard.set(firstName, forKey: kFirstName)
                        UserDefaults.standard.set(lastName, forKey: kLastName)
                        UserDefaults.standard.set(email, forKey: kEmail)
                        isLoggedIn = true
                        
                    }
                    else{
                        
                    }
                }
                
            }
        }
    }
}

#Preview {
    OnboardingView()
}
