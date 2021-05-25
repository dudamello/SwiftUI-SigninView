//
//  ContentView.swift
//  SwiftUI-Signin
//
//  Created by Eduarda Mello on 25/05/21.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var isToggleOn = false
    var isButtonDisabled : Bool {
        name.isEmpty || email.isEmpty || password.isEmpty
    }
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Inicio()
                    .padding(.top, 50)
                Spacer()
                VStack {
                    TextField("Nome", text: $name)
                        .padding(.vertical, 10)
                    Divider()
                    TextField("Email", text: $email)
                        .padding(.vertical, 10)
                    Divider()
                    if isToggleOn {
                        TextField("Senha", text: $password)
                            .padding(.vertical, 10)
                    } else {
                        SecureField("Senha", text: $password)
                            .padding(.vertical, 10)
                    }
                    
                    Divider()
                    Toggle("Ver sua senha", isOn: $isToggleOn)
                }
                Spacer()
            }
            
            Button {
                
            } label: {
                Text("Criar conta")
                    .frame(width: 318, height: 54, alignment: .center)
                    .background(isButtonDisabled ? .gray : Color("azul"))
                    .foregroundColor(.white)
                    .font(.system(size: 17, weight: .bold, design: .serif))
                    .cornerRadius(30)
            }
            .disabled(isButtonDisabled)
            
        }
        .padding()
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Inicio: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Crie sua conta")
                .font(.system(size: 65, weight: .bold, design: .serif))
                .foregroundColor(Color("azul"))
            Text("Criar sua conta é rápido, fácil e seguro")
                .padding(.top, 5)
        }
    }
}

