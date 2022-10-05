//
// GoodsCalculationResponseModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель для результат. */
public struct GoodsCalculationResponseModel: Codable, JSONEncodable, Hashable {

    /** Ключи. */
    public var keys: [CalculationKeyModel]?
    public var discount: GoodsCalculationDiscountsCollectionResponseModel?
    public var cashback: GoodsCalculationCashbacksCollectionResponseModel?

    public init(keys: [CalculationKeyModel]? = nil, discount: GoodsCalculationDiscountsCollectionResponseModel? = nil, cashback: GoodsCalculationCashbacksCollectionResponseModel? = nil) {
        self.keys = keys
        self.discount = discount
        self.cashback = cashback
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case keys
        case discount
        case cashback
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(keys, forKey: .keys)
        try container.encodeIfPresent(discount, forKey: .discount)
        try container.encodeIfPresent(cashback, forKey: .cashback)
    }
}
