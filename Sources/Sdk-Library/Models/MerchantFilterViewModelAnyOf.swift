//
// MerchantFilterViewModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MerchantFilterViewModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Список выбранных магазинов. */
    public var merchants: [MerchantViewModel]?
    public var merchantAttributeName: String?
    public var merchantAttributeValues: [String]?
    public var useAttributeMode: Bool?

    public init(merchants: [MerchantViewModel]? = nil, merchantAttributeName: String? = nil, merchantAttributeValues: [String]? = nil, useAttributeMode: Bool? = nil) {
        self.merchants = merchants
        self.merchantAttributeName = merchantAttributeName
        self.merchantAttributeValues = merchantAttributeValues
        self.useAttributeMode = useAttributeMode
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case merchants
        case merchantAttributeName
        case merchantAttributeValues
        case useAttributeMode
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(merchants, forKey: .merchants)
        try container.encodeIfPresent(merchantAttributeName, forKey: .merchantAttributeName)
        try container.encodeIfPresent(merchantAttributeValues, forKey: .merchantAttributeValues)
        try container.encodeIfPresent(useAttributeMode, forKey: .useAttributeMode)
    }
}
