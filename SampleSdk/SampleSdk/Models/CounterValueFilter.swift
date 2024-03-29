//
// CounterValueFilter.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Фильтр для значений счетчика. */
public struct CounterValueFilter: Codable, JSONEncodable, Hashable {

    /** Начало выборки. */
    public var from: Int?
    /** Количество. */
    public var count: Int?

    public init(from: Int? = nil, count: Int? = nil) {
        self.from = from
        self.count = count
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case from
        case count
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(from, forKey: .from)
        try container.encodeIfPresent(count, forKey: .count)
    }
}

