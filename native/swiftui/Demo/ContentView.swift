//
//  ContentView.swift
//  Demo
//

import SwiftUI
import LiveViewNative
import LiveViewNativeLiveForm



struct ContentView: View {
    @State private var x = ""
    @StateObject private var loginVM = LoginViewModel()
    @StateObject private var myprojetsVM = MyprojetsViewModel()
    @FocusState var isFocused: Bool

    func plus1(number: String) {
        isFocused = false
    x += number
        
    }
    var body: some View {
        
        VStack{
            Form {
                HStack{
                    Spacer()
                    Image(systemName: loginVM.isAuthenticated ? "lock.fill": "lock.open")
                    
                }
                TextField("Email", text: $loginVM.email )
                SecureField("Mot de passe", text: $loginVM.password)
                SecureField("Pin", text: $x).focused($isFocused)
                HStack{
                    Spacer()
                    if loginVM.isAuthenticated == false {
                        Button("Connectez-vous"){
                            loginVM.login()
                            
                        }.padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                        
                    } else {
                        
                        Button("Se deconnecter"){
                            loginVM.signout()
                            myprojetsVM.myprojets.removeAll()
                        }.padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))                     }
                    Spacer()
                }
                HStack{Button("1"){
                    plus1(number: "1")}
                    Button("2"){plus1(number: "2")}
                    Button("3"){plus1(number: "3")}}
                
                
                
                
            }.buttonStyle(.plain)
            Spacer()
            HStack{
                if loginVM.isError {
                    Text("Email, pin ou mot de passe incorrect").foregroundStyle(.red)
                }
                
            }
            
            VStack{
                Spacer()
                
                if loginVM.isAuthenticated && myprojetsVM.myprojets.count == 0 {
                    Spacer ()
                    Button("Get Accounts") {
                        myprojetsVM.getAllmyprojets()
                    }   .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))        }
                
                if loginVM.isAuthenticated && myprojetsVM.myprojets.count > 0 {
                    List(myprojetsVM.myprojets, id: \.id) { projet in
                        HStack {
                            Text("\(projet.title)")
                            Spacer()
                            Text("\(projet.id)")
                        }
                    }.listStyle(PlainListStyle())
                    
                } else {
                    Text("Connectez vous pour voir la liste des projets").foregroundStyle(.blue)
                    Spacer()
                    
                           }
                           
            
                
              
             
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
        } .onAppear(perform: {
            
        })
        .navigationBarHidden(true)
        .embedInNavigationView()
    }
}


extension View {
    
    func embedInNavigationView() -> some View {
        return NavigationView { self }
    }
    
}


    



