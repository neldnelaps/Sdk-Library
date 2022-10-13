//
// OldNewPriceRewardThumbnailModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель описания акции, состоящей из старой и новой цены. */
public struct OldNewPriceRewardThumbnailModel: Codable, JSONEncodable, Hashable {

    /** Идентификатор. */
    public var id: Int?
    /** Старая цена. */
    public var oldPrice: String?
    /** Новая цена. */
    public var newPrice: String?

    public init(id: Int? = nil, oldPrice: String? = nil, newPrice: String? = nil) {
        self.id = id
        self.oldPrice = oldPrice
        self.newPrice = newPrice
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case oldPrice
        case newPrice
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(oldPrice, forKey: .oldPrice)
        try container.encodeIfPresent(newPrice, forKey: .newPrice)
    }
}
