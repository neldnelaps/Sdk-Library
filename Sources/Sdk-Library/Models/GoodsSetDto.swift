//
// GoodsSetDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Набор товаров. */
public struct GoodsSetDto: Codable, JSONEncodable, Hashable {

    /** Название набора товаров. */
    public var name: String?
    /** Элементы каталога. */
    public var catalogItems: [ItemGroupDto]?
    /** Фильтры по атрибутам. */
    public var filters: [GoodsFilterDto]?

    public init(name: String? = nil, catalogItems: [ItemGroupDto]? = nil, filters: [GoodsFilterDto]? = nil) {
        self.name = name
        self.catalogItems = catalogItems
        self.filters = filters
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case catalogItems
        case filters
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(catalogItems, forKey: .catalogItems)
        try container.encodeIfPresent(filters, forKey: .filters)
    }
}

