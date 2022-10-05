//
// GoodsItemRequestModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель для товара. */
public struct GoodsItemRequestModel: Codable, JSONEncodable, Hashable {

    /** Идентификатор товара. */
    public var goodsId: String?
    /** Сумма позиции с учетом. */
    public var amount: Double?

    public init(goodsId: String? = nil, amount: Double? = nil) {
        self.goodsId = goodsId
        self.amount = amount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case goodsId
        case amount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(goodsId, forKey: .goodsId)
        try container.encodeIfPresent(amount, forKey: .amount)
    }
}
