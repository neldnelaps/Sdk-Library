//
// StringValueModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель StringValue. */
public struct StringValueModel: Codable, JSONEncodable, Hashable {

    /** StringValue. */
    public var stringValue: String?

    public init(stringValue: String? = nil) {
        self.stringValue = stringValue
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case stringValue
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(stringValue, forKey: .stringValue)
    }
}

