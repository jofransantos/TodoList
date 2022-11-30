//
//  AddView.swift
//  TodoList
//
//  Created by Joff on 18/11/22.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView {
            let colorGray = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
            VStack{
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(colorGray))
                    .cornerRadius(10)
               
                Button(action: {
                    
                }, label:{
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                })
                .padding(14)
            }
        }
        .navigationTitle("Add an Item 🖊")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        AddView()
        }
    }
}
