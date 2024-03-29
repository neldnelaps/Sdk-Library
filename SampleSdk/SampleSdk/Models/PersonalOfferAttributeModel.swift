//
// PersonalOfferAttributeModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель представления для атрибута типа \&quot;Персональные предложения\&quot;. */
public struct PersonalOfferAttributeModel: Codable, JSONEncodable, Hashable {

    /** ID атрибута. */
    public var id: Int?
    /** Дата начала заполнения списка товаров. */
    public var startFillDate: Date?
    /** Дата окончания заполнения списка товаров. */
    public var endFillDate: Date?
    /** Максимальное количество товаров. */
    public var maxGoodsCount: Int?
    public var goodsGroup: GoodsGroupModel?

    public init(id: Int? = nil, startFillDate: Date? = nil, endFillDate: Date? = nil, maxGoodsCount: Int? = nil, goodsGroup: GoodsGroupModel? = nil) {
        self.id = id
        self.startFillDate = startFillDate
        self.endFillDate = endFillDate
        self.maxGoodsCount = maxGoodsCount
        self.goodsGroup = goodsGroup
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case startFillDate
        case endFillDate
        case maxGoodsCount
        case goodsGroup
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(startFillDate, forKey: .startFillDate)
        try container.encodeIfPresent(endFillDate, forKey: .endFillDate)
        try container.encodeIfPresent(maxGoodsCount, forKey: .maxGoodsCount)
        try container.encodeIfPresent(goodsGroup, forKey: .goodsGroup)
    }
}

