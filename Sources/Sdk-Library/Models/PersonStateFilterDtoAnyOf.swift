//
// PersonStateFilterDtoAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PersonStateFilterDtoAnyOf: Codable, JSONEncodable, Hashable {

    /** Список состояний пользователя. */
    public var personStates: [PersonState]?

    public init(personStates: [PersonState]? = nil) {
        self.personStates = personStates
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case personStates
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(personStates, forKey: .personStates)
    }
}
