//
// ChequeGoodsLimitFilterViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** ViewModel для фильтра \&quot;Ограничение количества товара\&quot;. */
public struct ChequeGoodsLimitFilterViewModel: Codable, JSONEncodable, Hashable {

    public var id: Int?
    public var name: String?
    public var isDeletedFilterType: Bool?
    public var processParameters: String?
    /** Список выбранных групп товаров. */
    public var goodsGroups: [GoodsGroupViewModel]?
    /** Идентификатор атрибута \"Персональное предложение\". */
    public var personalOfferAttributeId: Int?
    public var dateTimeLimitPeriod: DateTimeLimitPeriod?
    /** Количество товара, которое можно приобрести за период. */
    public var quantity: Double?

    public init(id: Int? = nil, name: String? = nil, isDeletedFilterType: Bool? = nil, processParameters: String? = nil, goodsGroups: [GoodsGroupViewModel]? = nil, personalOfferAttributeId: Int? = nil, dateTimeLimitPeriod: DateTimeLimitPeriod? = nil, quantity: Double? = nil) {
        self.id = id
        self.name = name
        self.isDeletedFilterType = isDeletedFilterType
        self.processParameters = processParameters
        self.goodsGroups = goodsGroups
        self.personalOfferAttributeId = personalOfferAttributeId
        self.dateTimeLimitPeriod = dateTimeLimitPeriod
        self.quantity = quantity
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case isDeletedFilterType
        case processParameters
        case goodsGroups
        case personalOfferAttributeId
        case dateTimeLimitPeriod
        case quantity
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(isDeletedFilterType, forKey: .isDeletedFilterType)
        try container.encodeIfPresent(processParameters, forKey: .processParameters)
        try container.encodeIfPresent(goodsGroups, forKey: .goodsGroups)
        try container.encodeIfPresent(personalOfferAttributeId, forKey: .personalOfferAttributeId)
        try container.encodeIfPresent(dateTimeLimitPeriod, forKey: .dateTimeLimitPeriod)
        try container.encodeIfPresent(quantity, forKey: .quantity)
    }
}
