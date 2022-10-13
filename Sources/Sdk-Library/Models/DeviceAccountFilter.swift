//
// DeviceAccountFilter.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель фильтра для поиска списка счетов кассы. */
public struct DeviceAccountFilter: Codable, JSONEncodable, Hashable {

    /** Порядковый номер начального элемента выборки. */
    public var from: Int?
    /** Количество возвращаемых элементов выборки. */
    public var count: Int?
    /** Подстрока для поиска по названию валюты. */
    public var name: String?
    /** Список внутренних идентификаторов касс, которые будут отображаться первыми в списке. */
    public var sortingIds: [Int]?

    public init(from: Int? = nil, count: Int? = nil, name: String? = nil, sortingIds: [Int]? = nil) {
        self.from = from
        self.count = count
        self.name = name
        self.sortingIds = sortingIds
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case from
        case count
        case name
        case sortingIds
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(from, forKey: .from)
        try container.encodeIfPresent(count, forKey: .count)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(sortingIds, forKey: .sortingIds)
    }
}

