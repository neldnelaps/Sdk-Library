//
// MerchantsSubFilter.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Магазины, в которых совершались покупки. */
public struct MerchantsSubFilter: Codable, JSONEncodable, Hashable {

    /** Магазины, в которых совершались покупки. */
    public var merchants: [MerchantDto]?
    /** Использовать вариант работы по атрибутам. */
    public var useAttributeMode: Bool?
    /** Имя aтрибута магазина. */
    public var merchantAttributeName: String?
    /** Значение аттрибута. */
    public var merchantAttributeValues: [String]?

    public init(merchants: [MerchantDto]? = nil, useAttributeMode: Bool? = nil, merchantAttributeName: String? = nil, merchantAttributeValues: [String]? = nil) {
        self.merchants = merchants
        self.useAttributeMode = useAttributeMode
        self.merchantAttributeName = merchantAttributeName
        self.merchantAttributeValues = merchantAttributeValues
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case merchants
        case useAttributeMode
        case merchantAttributeName
        case merchantAttributeValues
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(merchants, forKey: .merchants)
        try container.encodeIfPresent(useAttributeMode, forKey: .useAttributeMode)
        try container.encodeIfPresent(merchantAttributeName, forKey: .merchantAttributeName)
        try container.encodeIfPresent(merchantAttributeValues, forKey: .merchantAttributeValues)
    }
}
