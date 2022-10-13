//
// GoodsGroupDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Группа товаров. */
public struct GoodsGroupDto: Codable, JSONEncodable, Hashable {

    /** Идентификатор группы товаров. */
    public var id: UUID?
    /** Название группы товаров. */
    public var name: String?
    /** Идентификатор партнера. */
    public var partnerId: UUID?
    /** Фиксирована ли группа товаров. */
    public var isFixed: Bool?
    /** Включающие наборы. */
    public var includingSets: [GoodsSetDto]?
    /** Исключающие наборы. */
    public var excludingSets: [GoodsSetDto]?

    public init(id: UUID? = nil, name: String? = nil, partnerId: UUID? = nil, isFixed: Bool? = nil, includingSets: [GoodsSetDto]? = nil, excludingSets: [GoodsSetDto]? = nil) {
        self.id = id
        self.name = name
        self.partnerId = partnerId
        self.isFixed = isFixed
        self.includingSets = includingSets
        self.excludingSets = excludingSets
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case partnerId
        case isFixed
        case includingSets
        case excludingSets
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(partnerId, forKey: .partnerId)
        try container.encodeIfPresent(isFixed, forKey: .isFixed)
        try container.encodeIfPresent(includingSets, forKey: .includingSets)
        try container.encodeIfPresent(excludingSets, forKey: .excludingSets)
    }
}
