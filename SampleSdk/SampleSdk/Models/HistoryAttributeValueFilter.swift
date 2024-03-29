//
// HistoryAttributeValueFilter.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель для фильтра получения истории изменения значений атрибутов пользователя. */
public struct HistoryAttributeValueFilter: Codable, JSONEncodable, Hashable {

    /** Дата с. Если не задано - то берётся минимальное значение. */
    public var createDateFrom: Date?
    /** Дата по. Если не задано - то берётся максимальное значение. */
    public var createDateTo: Date?
    /** Сортировка по возрастанию/убыванию. По дефолту по убыванию. */
    public var sortDescendingByCreateDateTime: Bool?
    /** Начало выборки. */
    public var from: Int?
    /** Количество. */
    public var count: Int?

    public init(createDateFrom: Date? = nil, createDateTo: Date? = nil, sortDescendingByCreateDateTime: Bool? = nil, from: Int? = nil, count: Int? = nil) {
        self.createDateFrom = createDateFrom
        self.createDateTo = createDateTo
        self.sortDescendingByCreateDateTime = sortDescendingByCreateDateTime
        self.from = from
        self.count = count
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case createDateFrom
        case createDateTo
        case sortDescendingByCreateDateTime
        case from
        case count
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(createDateFrom, forKey: .createDateFrom)
        try container.encodeIfPresent(createDateTo, forKey: .createDateTo)
        try container.encodeIfPresent(sortDescendingByCreateDateTime, forKey: .sortDescendingByCreateDateTime)
        try container.encodeIfPresent(from, forKey: .from)
        try container.encodeIfPresent(count, forKey: .count)
    }
}

