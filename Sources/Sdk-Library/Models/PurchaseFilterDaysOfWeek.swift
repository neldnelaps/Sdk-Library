//
// PurchaseFilterDaysOfWeek.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Дни недели покупок. */
public struct PurchaseFilterDaysOfWeek: Codable, JSONEncodable, Hashable {

    /** Дни недели покупок. */
    public var daysOfWeek: [DayOfWeek]?

    public init(daysOfWeek: [DayOfWeek]? = nil) {
        self.daysOfWeek = daysOfWeek
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case daysOfWeek
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(daysOfWeek, forKey: .daysOfWeek)
    }
}

