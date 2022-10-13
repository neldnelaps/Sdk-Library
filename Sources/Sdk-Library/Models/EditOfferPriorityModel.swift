//
// EditOfferPriorityModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель для изменения приоритета акции. */
public struct EditOfferPriorityModel: Codable, JSONEncodable, Hashable {

    /** Приоритет акции. */
    public var priority: Int?

    public init(priority: Int? = nil) {
        self.priority = priority
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case priority
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(priority, forKey: .priority)
    }
}

