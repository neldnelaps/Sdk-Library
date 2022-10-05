//
// GoodsCalculationCashbacksCollectionResponseModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель для результатов обсчёта товаров. */
public struct GoodsCalculationCashbacksCollectionResponseModel: Codable, JSONEncodable, Hashable {

    /** Преференции по акциям и валютам. */
    public var goodsCalculationCashbackResult: [GoodsCalculationCashbackResponseModel]?
    /** Общая сумма бонусов. */
    public var amount: Double?

    public init(goodsCalculationCashbackResult: [GoodsCalculationCashbackResponseModel]? = nil, amount: Double? = nil) {
        self.goodsCalculationCashbackResult = goodsCalculationCashbackResult
        self.amount = amount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case goodsCalculationCashbackResult
        case amount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(goodsCalculationCashbackResult, forKey: .goodsCalculationCashbackResult)
        try container.encodeIfPresent(amount, forKey: .amount)
    }
}
