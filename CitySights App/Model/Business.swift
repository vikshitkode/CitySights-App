//
//  Business.swift
//  CitySights App
//
//  Created by Sai Vikshit Kode on 3/11/25.
//

import Foundation

struct Business: Decodable, Identifiable{
    var id: String?
    var alias: String?
    var name: String?
    var imageUrl: String?
    var isClosed: Bool?
    var url: String?
    var reviewCount: Int?
    var categories: [Category]
    var rating: Double?
    var coordinates: Coordinate?
    var transactions: [String]?
    var price: String?
    var location: Location?
    var phone: String?
    var displayPhone: String?
    var distance: Double?
    var businessHours: [BusinessHour]?
    var attributes: Attributes?
    
    enum CodingKeys: String, CodingKey {
        case displayPhone = "display_phone"
        case isClosed = "is_closed"
        case imageUrl = "image_url"
        case reviewCount = "review_count"
        
        case id
        case alias
        case name
        case url
        case rating
        case categories
        case coordinates
        case transactions
        case price
        case location
        case phone
        case distance
        
    }
}

struct Category: Decodable {
    var alias: String?
    var title: String?

    enum CodingKeys: String, CodingKey {
        case alias
        case title
    }
}

struct Location: Decodable {
    var address1: String?
    var address2: String?
    var address3: String?
    var city: String?
    var zipCode: String?
    var country: String?
    var state: String?
    var displayAddress: [String]?

    enum CodingKeys: String, CodingKey {
        case address1
        case address2
        case address3
        case city
        case zipCode = "zip_code"
        case country
        case state
        case displayAddress = "display_address"
    }
}

struct BusinessHour: Decodable {
    var open: [OpenHour]
    var hoursType: String?
    var isOpenNow: Bool?

    enum CodingKeys: String, CodingKey {
        case open
        case hoursType = "hours_type"
        case isOpenNow = "is_open_now"
    }
}

struct OpenHour: Decodable {
    var isOvernight: Bool?
    var start: String?
    var end: String?
    var day: Int?

    enum CodingKeys: String, CodingKey {
        case isOvernight = "is_overnight"
        case start
        case end
        case day
    }
}

struct Attributes: Decodable {
    var businessTempClosed: Bool?
    var menuUrl: String?
    var open24Hours: Bool?
    var waitlistReservation: Bool?

    enum CodingKeys: String, CodingKey {
        case businessTempClosed = "business_temp_closed"
        case menuUrl = "menu_url"
        case open24Hours = "open24_hours"
        case waitlistReservation = "waitlist_reservation"
    }
}
