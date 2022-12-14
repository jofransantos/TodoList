//
//  ListView.swift
//  TodoList
//
//  Created by Joff on 17/11/22.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(title: "This is the first title!", isCompleted: false),
        ItemModel(title: "This is the second title!", isCompleted: true),
        ItemModel(title: "Third!", isCompleted: false),
    ]
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
            .onDelete(perform:  deleteItem)
            .onMove(perform: moveItem)
            
            .listStyle(PlainListStyle())
            .navigationTitle("To do List 📝")
            .navigationBarItems(
                leading: EditButton(),
                trailing:
                    NavigationLink("Add", destination: AddView())
            )
        }
        func deleteItem(indexSet: IndexSet) {
            items.remove(atOffsets: indexSet)
        }
        
        func moveItem (from: IndexSet, to: Int) {
            items.remove(fromOffsets: from, toOffset: to)
        }
        struct ListView_Previews: PreviewProvider {
            static var previews: some View {
                NavigationView {
                    ListView()
                }
            }
        }
    }
}
