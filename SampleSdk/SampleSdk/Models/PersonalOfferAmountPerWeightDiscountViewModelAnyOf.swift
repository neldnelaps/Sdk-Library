//
// PersonalOfferAmountPerWeightDiscountViewModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PersonalOfferAmountPerWeightDiscountViewModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Величина шага. */
    public var measureWeight: Double?

    public init(measureWeight: Double? = nil) {
        self.measureWeight = measureWeight
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case measureWeight
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(measureWeight, forKey: .measureWeight)
    }
}

