//
// BBBAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BBBAnyOf: Codable, JSONEncodable, Hashable {

    public var bbb: MoneyViewModel?

    public init(bbb: MoneyViewModel? = nil) {
        self.bbb = bbb
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case bbb
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(bbb, forKey: .bbb)
    }
}

