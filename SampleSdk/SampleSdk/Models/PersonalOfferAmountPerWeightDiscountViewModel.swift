//
// PersonalOfferAmountPerWeightDiscountViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Скидка за каждые N денег в покупке. */
public struct PersonalOfferAmountPerWeightDiscountViewModel: Codable, JSONEncodable, Hashable {

    public var discountType: PartnerDiscountType?
    /** Значение скидки. */
    public var value: Double?
    /** Величина шага. */
    public var measureWeight: Double?

    public init(discountType: PartnerDiscountType? = nil, value: Double? = nil, measureWeight: Double? = nil) {
        self.discountType = discountType
        self.value = value
        self.measureWeight = measureWeight
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case discountType
        case value
        case measureWeight
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(discountType, forKey: .discountType)
        try container.encodeIfPresent(value, forKey: .value)
        try container.encodeIfPresent(measureWeight, forKey: .measureWeight)
    }
}

