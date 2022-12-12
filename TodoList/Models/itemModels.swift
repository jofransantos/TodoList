//
//  itemModels.swift
//  TodoList
//
//  Created by Joff on 10/12/22.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
