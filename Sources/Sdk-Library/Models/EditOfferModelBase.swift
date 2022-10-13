//
// EditOfferModelBase.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Базовый класс для работы с акцией. */
public struct EditOfferModelBase: Codable, JSONEncodable, Hashable {

    /** Id акции. */
    public var offerId: Int?

    public init(offerId: Int? = nil) {
        self.offerId = offerId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case offerId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(offerId, forKey: .offerId)
    }
}
