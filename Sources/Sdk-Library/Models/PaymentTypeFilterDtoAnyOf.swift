//
// PaymentTypeFilterDtoAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PaymentTypeFilterDtoAnyOf: Codable, JSONEncodable, Hashable {

    /** Список способов оплаты. */
    public var paymentTypesIds: [Int]?

    public init(paymentTypesIds: [Int]? = nil) {
        self.paymentTypesIds = paymentTypesIds
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case paymentTypesIds
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(paymentTypesIds, forKey: .paymentTypesIds)
    }
}
