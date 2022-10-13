//
// FavoriteGoodsGroupViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** ViewModel для любимых товаров. */
public struct FavoriteGoodsGroupViewModel: Codable, JSONEncodable, Hashable {

    /** Внутренний идентификатор. */
    public var id: Int?
    /** Начальная дата периода. */
    public var fromDate: Date?
    /** Конечная дата периода. */
    public var toDate: Date?
    /** Количество ячеек по умолчанию. */
    public var defaultGoodsCount: Int?
    /** Максимальное количество ячеек. */
    public var maxGoodsCount: Int?
    /** Внутренний идентификатор Партнера. */
    public var partnerId: Int?
    /** Внутренний идентификатор группы товаров. */
    public var goodsGroupId: Int?
    /** Название группы товаров. */
    public var goodsGroupName: String?
    /** Название персонального предложения. */
    public var personalOfferName: String?

    public init(id: Int? = nil, fromDate: Date? = nil, toDate: Date? = nil, defaultGoodsCount: Int? = nil, maxGoodsCount: Int? = nil, partnerId: Int? = nil, goodsGroupId: Int? = nil, goodsGroupName: String? = nil, personalOfferName: String? = nil) {
        self.id = id
        self.fromDate = fromDate
        self.toDate = toDate
        self.defaultGoodsCount = defaultGoodsCount
        self.maxGoodsCount = maxGoodsCount
        self.partnerId = partnerId
        self.goodsGroupId = goodsGroupId
        self.goodsGroupName = goodsGroupName
        self.personalOfferName = personalOfferName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case fromDate
        case toDate
        case defaultGoodsCount
        case maxGoodsCount
        case partnerId
        case goodsGroupId
        case goodsGroupName
        case personalOfferName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(fromDate, forKey: .fromDate)
        try container.encodeIfPresent(toDate, forKey: .toDate)
        try container.encodeIfPresent(defaultGoodsCount, forKey: .defaultGoodsCount)
        try container.encodeIfPresent(maxGoodsCount, forKey: .maxGoodsCount)
        try container.encodeIfPresent(partnerId, forKey: .partnerId)
        try container.encodeIfPresent(goodsGroupId, forKey: .goodsGroupId)
        try container.encodeIfPresent(goodsGroupName, forKey: .goodsGroupName)
        try container.encodeIfPresent(personalOfferName, forKey: .personalOfferName)
    }
}

