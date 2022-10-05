//
// KeyValuePairOfCouponStateAndInt32.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct KeyValuePairOfCouponStateAndInt32: Codable, JSONEncodable, Hashable {

    public var key: CouponState?
    public var value: Int?

    public init(key: CouponState? = nil, value: Int? = nil) {
        self.key = key
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case key
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(key, forKey: .key)
        try container.encodeIfPresent(value, forKey: .value)
    }
}

