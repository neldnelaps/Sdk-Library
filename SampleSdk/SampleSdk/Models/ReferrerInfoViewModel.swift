//
// ReferrerInfoViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Реферальная информация. */
public struct ReferrerInfoViewModel: Codable, JSONEncodable, Hashable {

    /** Номер карты. */
    public var referrerLink: String?

    public init(referrerLink: String? = nil) {
        self.referrerLink = referrerLink
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case referrerLink
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(referrerLink, forKey: .referrerLink)
    }
}

