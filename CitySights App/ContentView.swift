//
//  ContentView.swift
//  CitySights App
//
//  Created by Sai Vikshit Kode on 3/9/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var query: String = ""
    var service = DataService()
    
    var body: some View {
        HStack {
            TextField("What are you looking for?", text: $query).textFieldStyle(.roundedBorder)
            Button {
                // TODO
            } label: {
                Text("Go")
            }
            
        }
        .padding()
        .task {
            await service.buinessSearch()
        }
    }
}

#Preview {
    ContentView()
}
