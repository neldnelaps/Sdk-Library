//
// FavoriteGoodsHistorySetViewModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct FavoriteGoodsHistorySetViewModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Goods. */
    public var goods: [FavoriteGoodsPositionViewModel]?

    public init(goods: [FavoriteGoodsPositionViewModel]? = nil) {
        self.goods = goods
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case goods
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(goods, forKey: .goods)
    }
}

