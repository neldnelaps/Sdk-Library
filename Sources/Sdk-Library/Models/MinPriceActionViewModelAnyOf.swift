//
// MinPriceActionViewModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MinPriceActionViewModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Процент. */
    public var percent: Double?
    /** Фиксированная сумма. */
    public var fixedAmount: Double?
    /** Фиксированная цена. */
    public var fixedPrice: Double?
    /** Идентификатор атрибута каталога. */
    public var goodsAttributeId: Int?

    public init(percent: Double? = nil, fixedAmount: Double? = nil, fixedPrice: Double? = nil, goodsAttributeId: Int? = nil) {
        self.percent = percent
        self.fixedAmount = fixedAmount
        self.fixedPrice = fixedPrice
        self.goodsAttributeId = goodsAttributeId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case percent
        case fixedAmount
        case fixedPrice
        case goodsAttributeId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(percent, forKey: .percent)
        try container.encodeIfPresent(fixedAmount, forKey: .fixedAmount)
        try container.encodeIfPresent(fixedPrice, forKey: .fixedPrice)
        try container.encodeIfPresent(goodsAttributeId, forKey: .goodsAttributeId)
    }
}

