//
//  LogInView.swift
//  LyL
//
//  Created by Jose Anonio Torres Garibay on 02/03/24.
//

import SwiftUI

struct LogInView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            Image("LogoLyL6")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("LIBRES Y LOKOS")
                .font(.largeTitle)
                .bold()
            
            Spacer()
            
            VStack {
                TextField("", text: $email, prompt: Text("Correo"))
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                SecureField("", text: $password,prompt: Text("Contraseña"))
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
            }
            .padding(.bottom)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("LOGIN")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .font(.title2)
                    .bold()
            })
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle(radius: 90))
            .tint(Color.black)
            
            Spacer()
            
            Text("New here?")
                .font(.caption)
            Text("Register")
        }
        .padding()
        .textFieldStyle(.roundedBorder)
        .fontDesign(.rounded)
        .background(Color.white)
    }
}

#Preview {
    LogInView().environment(\.colorScheme, .light)
}
