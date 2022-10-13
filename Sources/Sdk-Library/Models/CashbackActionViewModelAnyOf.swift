//
// CashbackActionViewModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CashbackActionViewModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Id определения времени жизни. */
    public var lifeTimeDefinitionId: Int?
    public var currency: CurrencyViewModel?

    public init(lifeTimeDefinitionId: Int? = nil, currency: CurrencyViewModel? = nil) {
        self.lifeTimeDefinitionId = lifeTimeDefinitionId
        self.currency = currency
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case lifeTimeDefinitionId
        case currency
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(lifeTimeDefinitionId, forKey: .lifeTimeDefinitionId)
        try container.encodeIfPresent(currency, forKey: .currency)
    }
}

