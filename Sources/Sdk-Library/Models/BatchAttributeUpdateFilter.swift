//
// BatchAttributeUpdateFilter.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель фильтров для сортировки истории пакетного обновления атрибутов клиентов. */
public struct BatchAttributeUpdateFilter: Codable, JSONEncodable, Hashable {

    /** Дата, с которой необходимо вывести историю. */
    public var fromDate: Date?
    /** Дата, до которой необходимо вывести историю. */
    public var toDate: Date?
    public var creator: CreatorFilter?
    public var state: BatchState?

    public init(fromDate: Date? = nil, toDate: Date? = nil, creator: CreatorFilter? = nil, state: BatchState? = nil) {
        self.fromDate = fromDate
        self.toDate = toDate
        self.creator = creator
        self.state = state
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case fromDate
        case toDate
        case creator
        case state
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(fromDate, forKey: .fromDate)
        try container.encodeIfPresent(toDate, forKey: .toDate)
        try container.encodeIfPresent(creator, forKey: .creator)
        try container.encodeIfPresent(state, forKey: .state)
    }
}

