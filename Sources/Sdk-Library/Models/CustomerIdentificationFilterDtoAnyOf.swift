//
// CustomerIdentificationFilterDtoAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CustomerIdentificationFilterDtoAnyOf: Codable, JSONEncodable, Hashable {

    /** Способы идентификации. */
    public var identificationTypes: [IdentifierType]?

    public init(identificationTypes: [IdentifierType]? = nil) {
        self.identificationTypes = identificationTypes
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case identificationTypes
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(identificationTypes, forKey: .identificationTypes)
    }
}

