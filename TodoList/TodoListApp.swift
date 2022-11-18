//
//  TodoListApp.swift
//  TodoList
//
//  Created by Joff on 17/11/22.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - data point
 View - Ui
 ViewModel - manages Model for View
 
 */

@main
struct TodoListApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            
        }
    }
}
