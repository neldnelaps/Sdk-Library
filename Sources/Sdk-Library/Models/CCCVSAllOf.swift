//
// CCCVSAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CCCVSAllOf: Codable, JSONEncodable, Hashable {

    public var cccvs: MoneyViewModel?

    public init(cccvs: MoneyViewModel? = nil) {
        self.cccvs = cccvs
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case cccvs
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(cccvs, forKey: .cccvs)
    }
}

