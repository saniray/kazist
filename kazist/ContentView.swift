<<<<<<< HEAD
=======
//
//  ContentView.swift
//  kazist
//
//  Created by Динмухамед Джилкайдаров on 24.03.2024.
//

>>>>>>> 7c3f0d2e8418a6abec70c4b2b42a2bf4823ee5e1
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
<<<<<<< HEAD
=======
        // Здесь будет ваш код для регистрации курьера
>>>>>>> 7c3f0d2e8418a6abec70c4b2b42a2bf4823ee5e1
        CourierRegistrationView()
    }
}

struct CourierRegistrationView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var phoneNumber: String = ""
    @State private var password: String = ""
<<<<<<< HEAD
    @State private var isRegistered = false // Используется для контроля перехода
=======
>>>>>>> 7c3f0d2e8418a6abec70c4b2b42a2bf4823ee5e1
    
    var body: some View {
        Form {
            Section(header: Text("Регистрация курьера")) {
                TextField("Имя", text: $name)
                TextField("Email", text: $email)
                TextField("Номер телефона", text: $phoneNumber)
                SecureField("Пароль", text: $password)
                Button("Зарегистрироваться") {
<<<<<<< HEAD
                    // Пример регистрации (здесь должна быть ваша логика)
                    self.isRegistered = true
                }
            }
        }
        .sheet(isPresented: $isRegistered) {
            CourierAdView() // Переход к добавлению объявления
        }
=======
                    // Здесь должен быть ваш код для регистрации
                }
            }
        }
>>>>>>> 7c3f0d2e8418a6abec70c4b2b42a2bf4823ee5e1
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
<<<<<<< HEAD
    @State private var isRegistered = false // Используется для контроля перехода
=======
>>>>>>> 7c3f0d2e8418a6abec70c4b2b42a2bf4823ee5e1
    
    var body: some View {
        Form {
            Section(header: Text("Регистрация отправителя")) {
                TextField("Имя", text: $name)
                TextField("Email", text: $email)
                TextField("Номер телефона", text: $phoneNumber)
                SecureField("Пароль", text: $password)
                Button("Зарегистрироваться") {
<<<<<<< HEAD
                    // Пример регистрации (здесь должна быть ваша логика)
                    self.isRegistered = true
                }
            }
        }
        .sheet(isPresented: $isRegistered) {
            SenderAdView() // Переход к добавлению объявления
        }
    }
}

// Добавление вью для создания объявления курьером
struct CourierAdView: View {
    @State private var destinationCity: String = ""
    @State private var departureDate = Date()

    var body: some View {
        Form {
            TextField("Город назначения", text: $destinationCity)
            DatePicker("Дата отправления", selection: $departureDate, displayedComponents: .date)
            Button("Опубликовать объявление") {
                // Здесь должна быть логика для публикации объявления курьера
            }
        }
    }
}

// Добавление вью для создания объявления отправителем
struct SenderAdView: View {
    @State private var productName: String = ""
    @State private var productQuantity: Int = 0
    @State private var productWeight: Double = 0.0
    
    var body: some View {
        Form {
            TextField("Наименование товара", text: $productName)
            TextField("Количество", value: $productQuantity, formatter: NumberFormatter())
            TextField("Вес", value: $productWeight, formatter: NumberFormatter())
            Button("Опубликовать объявление") {
                // Здесь долж
            }
        }
    }
}
=======
                    // Здесь должен быть ваш код для регистрации
                }
            }
        }
    }
}


>>>>>>> 7c3f0d2e8418a6abec70c4b2b42a2bf4823ee5e1
