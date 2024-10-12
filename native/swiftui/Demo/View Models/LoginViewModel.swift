import Foundation
class LoginViewModel: ObservableObject {
    
    var email: String = ""
    var password: String = ""
    var pin: String = ""
    @Published var isAuthenticated: Bool = false
    @Published var isError: Bool = false
    func login() {
        
        let defaults = UserDefaults.standard
        Webservice().login(email: email, password: password, pin: pin) { result in
            switch result {
            case .success(let SessionToken):
                print(SessionToken.user_id)
                defaults.setValue(SessionToken.token, forKey: "jsonwebtoken")
                DispatchQueue.main.async {
                    self.isAuthenticated = true
                    self.isError = false}
            case .failure(let error):
                DispatchQueue.main.async {
                    self.isError = true                }
                print(error.localizedDescription)
                
            }
        }
    }
    func signout() {
        let defaults = UserDefaults.standard
        defaults.removeObject(forKey: "jsonwebtoken")
        DispatchQueue.main.async {
            self.isAuthenticated = false
        }
    
}


}//
//  LoginViewModel.swift
//  Demo
//
//  Created by Auriol on 11/10/2024.
//

