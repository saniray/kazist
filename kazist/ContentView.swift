//
//  ContentView.swift
//  kazist
//
//  Created by Динмухамед Джилкайдаров on 24.03.2024.
//

import SwiftUI

@main
struct CourierApp: App {
    var body: some Scene {
        WindowGroup {
            MainTabView()
        }
    }
}

struct MainTabView: View {
    var body: some View {
        TabView {
            CourierView()
                .tabItem {
                    Label("Курьер", systemImage: "bicycle")
                }
            
            SenderView()
                .tabItem {
                    Label("Отправитель", systemImage: "shippingbox")
                }
        }
    }
}

struct CourierView: View {
    var body: some View {
        // Здесь будет ваш код для регистрации курьера
        CourierRegistrationView()
    }
}

struct CourierRegistrationView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var phoneNumber: String = ""
    @State private var password: String = ""
    
    var body: some View {
        Form {
            Section(header: Text("Регистрация курьера")) {
                TextField("Имя", text: $name)
                TextField("Email", text: $email)
                TextField("Номер телефона", text: $phoneNumber)
                SecureField("Пароль", text: $password)
                Button("Зарегистрироваться") {
                    // Здесь должен быть ваш код для регистрации
                }
            }
        }
    }
}

struct SenderView: View {
    var body: some View {
        SenderRegistrationView()
    }
}

struct SenderRegistrationView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var phoneNumber: String = ""
    @State private var password: String = ""
    
    var body: some View {
        Form {
            Section(header: Text("Регистрация отправителя")) {
                TextField("Имя", text: $name)
                TextField("Email", text: $email)
                TextField("Номер телефона", text: $phoneNumber)
                SecureField("Пароль", text: $password)
                Button("Зарегистрироваться") {
                    // Здесь должен быть ваш код для регистрации
                }
            }
        }
    }
}


