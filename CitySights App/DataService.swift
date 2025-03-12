//
//  DataService.swift
//  CitySights App
//
//  Created by Sai Vikshit Kode on 3/11/25.
//

import Foundation

struct DataService {
    
    let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String
    
    func buinessSearch() async {
        
        // check if api key exists
        guard apiKey != nil else {
            return
        }
        
        // Create URL
        if let url = URL(string: "https://api.yelp.com/v3/businesses/search?latitude=37.785834&longitude=-122.406417&categories=restaurants&limit=10"){
            
            // Create request
            var request = URLRequest(url: url)
            request.addValue("Bearer \(apiKey!)", forHTTPHeaderField: "Authorization")
            request.addValue("application/json", forHTTPHeaderField: "accept")
            
            // Send request
            do {
                let (data,response) = try await URLSession.shared.data(for: request)
                
                print(data)
                print(response)
            } catch {
                print("\(error)")
            }
        }
        
    }
}
