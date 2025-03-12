//
//  ContentView.swift
//  CitySights App
//
//  Created by Sai Vikshit Kode on 3/9/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var businesses = [Business]()
    @State private var query: String = ""
    var service = DataService()
    
    var body: some View {
        VStack{
            HStack {
                TextField("What are you looking for?", text: $query).textFieldStyle(.roundedBorder)
                Button {
                    // TODO
                } label: {
                    Text("Go")
                }
                
            }
            List (businesses) { b in
                Text(b.name ?? "Nil")}
        }
        .padding()
        .task {
            businesses = await service.buinessSearch()
        }
    }
}

#Preview {
    ContentView()
}
