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
}

struct Category: Decodable {
    var alias: String?
    var title: String?
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
}

struct BusinessHour: Decodable {
    var open: [OpenHour]
    var hoursType: String?
    var isOpenNow: Bool?
}

struct OpenHour: Decodable {
    var isOvernight: Bool?
    var start: String?
    var end: String?
    var day: Int?
}

struct Attributes: Decodable {
    var businessTempClosed: Bool?
    var menuUrl: String?
    var open24Hours: Bool?
    var waitlistReservation: Bool?
}
