import Foundation

class MyprojetsViewModel: ObservableObject {
    
    @Published var myprojets: [ProjetViewModel] = []
    
    func getAllmyprojets() {
        
        let defaults = UserDefaults.standard
        guard let token = defaults.string(forKey: "jsonwebtoken") else {
            return
        }
        
        Webservice().getAllMyprojets(token: token) { (result) in
            switch result {
                case .success(let myprojets):
                    DispatchQueue.main.async {
                        self.myprojets = myprojets.map(ProjetViewModel.init)
                    }
                case .failure(let error):
                    print(error.localizedDescription)
            }
        }
        
    }
    
}//
struct Projet: Decodable {
    let title: String
    let id: Int
}


struct ProjetViewModel {
    
    let projet: Projet
    
    var id : Int {
        return projet.id
    }
    
    var title: String {
        return projet.title
    }
    
  
}

//  Demo
//
//  Created by Auriol on 11/10/2024.
//

