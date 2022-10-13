//
// AccountFilterDtoAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AccountFilterDtoAnyOf: Codable, JSONEncodable, Hashable {

    /** Существует счет или нет. */
    public var accountExists: Bool?

    public init(accountExists: Bool? = nil) {
        self.accountExists = accountExists
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case accountExists
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(accountExists, forKey: .accountExists)
    }
}
