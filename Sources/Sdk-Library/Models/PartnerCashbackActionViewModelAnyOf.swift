//
// PartnerCashbackActionViewModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PartnerCashbackActionViewModelAnyOf: Codable, JSONEncodable, Hashable {

    public var currency: CurrencyViewModel?

    public init(currency: CurrencyViewModel? = nil) {
        self.currency = currency
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case currency
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(currency, forKey: .currency)
    }
}

