//
// AddressInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Информация об адресе. */
public struct AddressInfo: Codable, JSONEncodable, Hashable {

    /** Город. */
    public var city: String?
    /** Улица. */
    public var street: String?
    /** Дом. */
    public var house: String?
    /** Строение. */
    public var building: String?
    /** Квартира. */
    public var flat: String?

    public init(city: String? = nil, street: String? = nil, house: String? = nil, building: String? = nil, flat: String? = nil) {
        self.city = city
        self.street = street
        self.house = house
        self.building = building
        self.flat = flat
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case city
        case street
        case house
        case building
        case flat
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(city, forKey: .city)
        try container.encodeIfPresent(street, forKey: .street)
        try container.encodeIfPresent(house, forKey: .house)
        try container.encodeIfPresent(building, forKey: .building)
        try container.encodeIfPresent(flat, forKey: .flat)
    }
}

