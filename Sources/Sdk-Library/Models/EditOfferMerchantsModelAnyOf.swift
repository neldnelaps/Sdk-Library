//
// EditOfferMerchantsModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct EditOfferMerchantsModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Список ID магазинов, в которых будет работать акция. */
    public var merchantIds: [Int]?

    public init(merchantIds: [Int]? = nil) {
        self.merchantIds = merchantIds
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case merchantIds
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(merchantIds, forKey: .merchantIds)
    }
}
