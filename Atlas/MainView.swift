//
//  ContentView.swift
//  Atlas
//
//  Created by Sravanthi Chinthireddy on 12/04/24.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var viewModel = LoginViewModel()
    
    var body: some View {
        TabView {
            if viewModel.isLoggedIn {
                HomeView(truckID: viewModel.truckID)
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                MessagesView()
                    .tabItem {
                        Image(systemName: "message")
                        Text("Messages")
                    }
                NotificationView()
                    .tabItem {
                        Image(systemName: "bell.and.waves.left.and.right")
                        Text("Notifications")
                    }
                MenuView()
                    .tabItem {
                        Image(systemName: "line.3.horizontal")
                        Text("Menu")
                    }
            }
            else {
                LoginView(viewModel: viewModel)
                    .alert(isPresented: $viewModel.showAlert) {
                                Alert(
                                    title: Text("Login Failed"),
                                    message: Text("Incorrect username or password"),
                                    dismissButton: .default(Text("Dismiss")) {
                                        // Handle Yes action
                                        print("User tapped Dismiss")
                                    }
                                )
                            }

            }
            
        }
    }
}

#Preview {
    MainView()
}
