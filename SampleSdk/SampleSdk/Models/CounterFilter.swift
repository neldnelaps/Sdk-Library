//
// CounterFilter.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Фильтр для значений счетчика. */
public struct CounterFilter: Codable, JSONEncodable, Hashable {

    /** Текст, содержащийся в названии счетчика. */
    public var nameText: String?
    /** Начало выборки. */
    public var from: Int?
    /** Количество. */
    public var count: Int?

    public init(nameText: String? = nil, from: Int? = nil, count: Int? = nil) {
        self.nameText = nameText
        self.from = from
        self.count = count
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case nameText
        case from
        case count
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(nameText, forKey: .nameText)
        try container.encodeIfPresent(from, forKey: .from)
        try container.encodeIfPresent(count, forKey: .count)
    }
}

