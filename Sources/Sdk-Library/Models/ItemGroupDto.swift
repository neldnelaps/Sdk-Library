//
// ItemGroupDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Элементы, сгруппированные по каталогу. */
public struct ItemGroupDto: Codable, JSONEncodable, Hashable {

    /** Идентификатор каталога. */
    public var catalogId: UUID?
    /** Элементы каталога. */
    public var items: [ItemDto]?

    public init(catalogId: UUID? = nil, items: [ItemDto]? = nil) {
        self.catalogId = catalogId
        self.items = items
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case catalogId
        case items
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(catalogId, forKey: .catalogId)
        try container.encodeIfPresent(items, forKey: .items)
    }
}

