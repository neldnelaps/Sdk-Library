//
// OfferFilter.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Фильтр акций. */
public struct OfferFilter: Codable, JSONEncodable, Hashable {

    /** Id магазина. */
    public var merchantId: Int?
    public var offerState: CommunicationOfferState?
    /** Со скольки. */
    public var from: Int?
    /** Сколько. */
    public var count: Int?
    public var type: CommunicationOfferType?
    public var categoryFilterType: OfferCategoryFilterType?
    /** Логические имена категорий. */
    public var categoryLogicalNames: [String]?

    public init(merchantId: Int? = nil, offerState: CommunicationOfferState? = nil, from: Int? = nil, count: Int? = nil, type: CommunicationOfferType? = nil, categoryFilterType: OfferCategoryFilterType? = nil, categoryLogicalNames: [String]? = nil) {
        self.merchantId = merchantId
        self.offerState = offerState
        self.from = from
        self.count = count
        self.type = type
        self.categoryFilterType = categoryFilterType
        self.categoryLogicalNames = categoryLogicalNames
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case merchantId
        case offerState
        case from
        case count
        case type
        case categoryFilterType
        case categoryLogicalNames
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(merchantId, forKey: .merchantId)
        try container.encodeIfPresent(offerState, forKey: .offerState)
        try container.encodeIfPresent(from, forKey: .from)
        try container.encodeIfPresent(count, forKey: .count)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(categoryFilterType, forKey: .categoryFilterType)
        try container.encodeIfPresent(categoryLogicalNames, forKey: .categoryLogicalNames)
    }
}

