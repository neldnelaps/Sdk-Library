//
// GoodsSetCatalogItem.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Подкаталог каталога в группе товаров. */
public struct GoodsSetCatalogItem: Codable, JSONEncodable, Hashable {

    /** Идентификатор подкаталога. */
    public var id: Int?
    public var state: CheckState?

    public init(id: Int? = nil, state: CheckState? = nil) {
        self.id = id
        self.state = state
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case state
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(state, forKey: .state)
    }
}

