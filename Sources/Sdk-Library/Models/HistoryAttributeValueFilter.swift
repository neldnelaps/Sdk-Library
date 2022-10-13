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

/** Модель для фильтра получения истории изменений значений атрибутов клиента. */
public struct HistoryAttributeValueFilter: Codable, JSONEncodable, Hashable {

    /** Начальная дата периода в формате 0000-00-00T00 00 00Z (Если не задана, то - самая ранняя). */
    public var createDateFrom: Date?
    /** Конечная дата периода в формате 0000-00-00T00 00 00Z.(Если не задана, то - самая поздняя). */
    public var createDateTo: Date?
    /** Тип сортировки (true-по убыванию, false-по возрастанию). */
    public var sortDescendingByCreateDateTime: Bool?
    /** Порядковый номер начального элемента выборки. */
    public var from: Int?
    /** Количество возвращаемых элементов выборки. */
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
