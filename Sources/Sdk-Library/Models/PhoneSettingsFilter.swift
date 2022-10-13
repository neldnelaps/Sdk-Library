//
// PhoneSettingsFilter.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Фильтр для получения списка настроек номеров телефонов. */
public struct PhoneSettingsFilter: Codable, JSONEncodable, Hashable {

    /** Начало выборки. */
    public var from: Int?
    /** Количество. */
    public var count: Int?
    /** Название страны. */
    public var countryName: String?
    /** Активен формат или нет. */
    public var isArchived: Bool?

    public init(from: Int? = nil, count: Int? = nil, countryName: String? = nil, isArchived: Bool? = nil) {
        self.from = from
        self.count = count
        self.countryName = countryName
        self.isArchived = isArchived
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case from
        case count
        case countryName
        case isArchived
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(from, forKey: .from)
        try container.encodeIfPresent(count, forKey: .count)
        try container.encodeIfPresent(countryName, forKey: .countryName)
        try container.encodeIfPresent(isArchived, forKey: .isArchived)
    }
}
