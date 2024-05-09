//
//  RegisterView.swift
//  LyL
//
//  Created by Jose Anonio Torres Garibay on 09/03/24.
//

import SwiftUI

struct RegisterView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            Image("logoLyL")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
            Spacer()
            
            Text("REGISTRARSE")
                .font(.title)
                .bold()
            
            VStack {
                TextField("", text: $name, prompt: Text("Nombre").foregroundStyle(Color.black))
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                TextField("", text: $email, prompt: Text("Email").foregroundStyle(Color.black))
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
                SecureField("", text: $password,prompt: Text("Contraseña").foregroundStyle(Color.black))
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .clipShape(RoundedRectangle(cornerRadius: 10.0))
            }
            .padding()
            .foregroundStyle(Color.black)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("SIGN UP")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .font(.title2)
                    .bold()
            })
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle(radius: 90))
            .tint(Color.white)
            .foregroundColor(.black)
            .padding()
            
            Spacer()
            
            Text("Already Signed In?")
                .font(.caption)
            Text("Log In")
        }
        .background(Color.black)
        .textFieldStyle(.roundedBorder)
        .foregroundStyle(Color.white)
    }
}

#Preview {
    RegisterView().environment(\.colorScheme, .light)
}
