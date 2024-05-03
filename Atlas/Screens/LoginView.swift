//
//  LoginView.swift
//  Atlas
//
//  Created by Sravanthi Chinthireddy on 30/04/24.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var viewModel = LoginViewModel()
    
    @State var uname : String = ""
    @State var isunameFocused: Bool = false
    
    @State var username : String = ""
    @State var isUsernameFocused: Bool = false
    @State var password : String = ""
    @State var isPasswordFocused: Bool = false
    
    var body: some View {
        VStack {

            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.secondary, lineWidth: 1)
                .padding()
                .frame(height: 90)
                .overlay(
                    VStack(alignment: .leading, spacing: 0) {
                        if isUsernameFocused || !username.isEmpty {
                            Text("Username")
                                .font(.footnote)
                                .fontWeight(.regular)
                                .foregroundStyle(.secondary)
                                .animation(.easeIn(duration: 0.5), value: isUsernameFocused)
                                .padding(.vertical, 0)
                                .padding(.horizontal, 10)
                            
                        }
                        TextField("Username", text: $viewModel.username, onEditingChanged: { edited in
                            isUsernameFocused = true
                        })
                        .textFieldStyle(PlainTextFieldStyle())
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(.never)
                        .padding(.vertical, 0)
                        .padding(.horizontal, 10)
                    }
                        .padding()
                )
            
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.secondary, lineWidth: 1)
                .padding()
                .frame(height: 90)
                .overlay(
                    VStack(alignment: .leading, spacing: 0) {
                        if isPasswordFocused || !password.isEmpty {
                            Text("Password")
                                .font(.footnote)
                                .fontWeight(.regular)
                                .foregroundStyle(.secondary)
                                .animation(.easeIn(duration: 0.5), value: isPasswordFocused)
                                .padding(.vertical, 0)
                                .padding(.horizontal, 10)
                            
                        }
                        SecureField("Password", text: $viewModel.password, onCommit: {
                            isPasswordFocused = false
                        })
                        .onTapGesture {
                            isPasswordFocused = true
                        }
                        .textFieldStyle(PlainTextFieldStyle())
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(.never)
                        .padding(.vertical, 0)
                        .padding(.horizontal, 10)
                    }
                        .padding()
                )
            
//            TextField("Username", text: $viewModel.username)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
//                .autocorrectionDisabled()
//                .textInputAutocapitalization(.never)
//                .padding()
//            
//            SecureField("Password", text: $viewModel.password)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
//                .autocorrectionDisabled()
//                .textInputAutocapitalization(.never)
//                .padding()
            
            Button(action: {
                if viewModel.isLoginValidated() {
                    viewModel.login()
                }
            }, label: {
                Text("Login")
                    .font(.title2)
                    .fontWeight(.medium)
                    .padding(.horizontal, 30)
                    .padding(.vertical, 7)
                    .foregroundStyle(.white)
                    .background(
                        Capsule()
                            .foregroundStyle(Color.accentColor)
                    )
            })
        }
    }
}

//struct LoginView: View {
//    enum Field: Hashable {
//            case usernameField
//            case passwordField
//        }
//
//
//        @State private var username = ""
//        @State private var password = ""
//        @FocusState private var focusedField: Field?
//
//
//        var body: some View {
//            Form {
//                TextField("Username", text: $username)
//                    .focused($focusedField, equals: .usernameField)
//
//
//                SecureField("Password", text: $password)
//                    .focused($focusedField, equals: .passwordField)
//
//
//                Button("Sign In") {
//                    if username.isEmpty {
//                        focusedField = .usernameField
//                    } else if password.isEmpty {
//                        focusedField = .passwordField
//                    } else {
////                        handleLogin(username, password)
//                    }
//                }
//            }
//        }
//}

#Preview {
    LoginView()
}
