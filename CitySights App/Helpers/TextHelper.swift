//
//  TextHelper.swift
//  CitySights App
//
//  Created by Sai Vikshit Kode on 3/12/25.
//

import Foundation

struct TextHelper {
    static func distanceAwayText(meters: Double) -> String {
        if meters > 1000{
            return "\(Int(round(meters/1000))) kms away"
        }
        else {
            return "\(Int(round(meters))) m away"
        }
    }
}
