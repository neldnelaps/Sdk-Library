//
// PartnerFilter.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Фильтр для партнеров. */
public struct PartnerFilter: Codable, JSONEncodable, Hashable {

    /** Порядковый номер начального элемента выборки. */
    public var from: Int?
    /** Количество возвращаемых элементов выборки. */
    public var count: Int?
    /** Подстрока для поиска по названию Партнера. */
    public var name: String?
    /** Выбираются партнеры, на которые текущий пользователь имеет указанное право. */
    public var permission: String?
    /** Сортировка в обратном порядке (true — да, false — нет). */
    public var orderByDesc: Bool?
    /** Список идентификаторов для первоочередного выбора. */
    public var sortingIds: [Int]?
    /** Список внутренних идентификаторов Программ лояльности. */
    public var loyaltyPrograms: [Int]?

    public init(from: Int? = nil, count: Int? = nil, name: String? = nil, permission: String? = nil, orderByDesc: Bool? = nil, sortingIds: [Int]? = nil, loyaltyPrograms: [Int]? = nil) {
        self.from = from
        self.count = count
        self.name = name
        self.permission = permission
        self.orderByDesc = orderByDesc
        self.sortingIds = sortingIds
        self.loyaltyPrograms = loyaltyPrograms
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case from
        case count
        case name
        case permission
        case orderByDesc
        case sortingIds
        case loyaltyPrograms
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(from, forKey: .from)
        try container.encodeIfPresent(count, forKey: .count)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(permission, forKey: .permission)
        try container.encodeIfPresent(orderByDesc, forKey: .orderByDesc)
        try container.encodeIfPresent(sortingIds, forKey: .sortingIds)
        try container.encodeIfPresent(loyaltyPrograms, forKey: .loyaltyPrograms)
    }
}
