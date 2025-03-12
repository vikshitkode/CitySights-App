//
//  ContentView.swift
//  CitySights App
//
//  Created by Sai Vikshit Kode on 3/9/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var query: String = ""
    
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
        .onAppear(perform: {print(Bundle.main.infoDictionary?["API_KEY"] as? String)})
    }
}

#Preview {
    ContentView()
}
