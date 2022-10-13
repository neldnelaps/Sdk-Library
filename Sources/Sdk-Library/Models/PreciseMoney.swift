//
// PreciseMoney.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PreciseMoney: Codable, JSONEncodable, Hashable {

    public var amount: Double?
    public var currencyId: Int?
    public var currencyDescription: String?
    public var divisibility: Double?

    public init(amount: Double? = nil, currencyId: Int? = nil, currencyDescription: String? = nil, divisibility: Double? = nil) {
        self.amount = amount
        self.currencyId = currencyId
        self.currencyDescription = currencyDescription
        self.divisibility = divisibility
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case amount
        case currencyId
        case currencyDescription
        case divisibility
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(amount, forKey: .amount)
        try container.encodeIfPresent(currencyId, forKey: .currencyId)
        try container.encodeIfPresent(currencyDescription, forKey: .currencyDescription)
        try container.encodeIfPresent(divisibility, forKey: .divisibility)
    }
}
