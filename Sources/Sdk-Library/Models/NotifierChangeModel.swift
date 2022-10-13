//
// NotifierChangeModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель изменения нотификатора. */
public struct NotifierChangeModel: Codable, JSONEncodable, Hashable {

    /** Статус верификации нотификатора. */
    public var isVerified: Bool?

    public init(isVerified: Bool? = nil) {
        self.isVerified = isVerified
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case isVerified
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(isVerified, forKey: .isVerified)
    }
}

