import Foundation
enum AuthenticationError: Error {
    case invalidCredentials
    case custom(errorMessage: String)
    
}
enum NetworkError: Error {
    case invalidURL
    case noData
    case decodingError
}

struct LoginRequestBody: Codable {
    let email: String
    let password: String
    let pin: String
    
}

struct LoginResponse: Codable {
    let token: String?
    let message: String?
    let success: Bool?
    let user_id: Int?
}
struct SessionToken {
    let token: String?
    let user_id: Int
}

class Webservice {
    
    func getAllMyprojets(token: String, completion: @escaping ( Result<[Projet], NetworkError>) -> Void) {
        guard let url = URL(string: "http://localhost:4000/api/7476/myprojets?user_id=1") else {
            completion(.failure(.invalidURL))
            return
        }
        var request = URLRequest(url: url)
        request.addValue(token, forHTTPHeaderField: "Authorization")
        
        URLSession.shared.dataTask(with: request) {(data, response, error) in
            guard let data = data, error == nil else {
                completion(.failure(.noData))
                return
            }
            guard let myprojets = try? JSONDecoder().decode([Projet].self, from: data) else {
                completion(.failure(.decodingError))
                return
            }
            completion(.success(myprojets))
        }.resume()
    }

    
    func login(email: String, password: String, pin: String, completion: @escaping (Result<SessionToken,
                                                                      AuthenticationError>) -> Void){
        guard let url = URL(string: "http://localhost:4000/api/accounts/sign_in") else {
            completion(.failure(.custom(errorMessage: "URL n est pas correcte")))
            return
        }
        let body = LoginRequestBody(email: email, password: password, pin: pin)
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = try? JSONEncoder().encode(body)
        
        URLSession.shared.dataTask(with: request) {(data, response, error) in
            guard let data = data, error == nil else {
                completion(.failure(.custom(errorMessage: "Pas de donné")))
                return
            }
            guard let loginResponse = try? JSONDecoder().decode(LoginResponse.self, from: data) else {
                completion(.failure(.invalidCredentials))
                return
            }
            guard let token = loginResponse.token else { completion(.failure(.invalidCredentials))
                return
            }
            guard let user_id = loginResponse.user_id else { completion(.failure(.invalidCredentials))
                return
            }
          
            completion(.success(SessionToken(token: token, user_id: user_id)))
        }.resume()
    }
}
//  .swift
//  Demo
//
//  Created by Auriol on 11/10/2024.
//

