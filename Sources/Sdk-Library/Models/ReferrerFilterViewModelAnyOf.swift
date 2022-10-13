//
// ReferrerFilterViewModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ReferrerFilterViewModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Есть реферер или нет. */
    public var referrerSpecified: Bool?

    public init(referrerSpecified: Bool? = nil) {
        self.referrerSpecified = referrerSpecified
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case referrerSpecified
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(referrerSpecified, forKey: .referrerSpecified)
    }
}
