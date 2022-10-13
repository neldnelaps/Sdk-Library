//
// EmailBindingFilterViewModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct EmailBindingFilterViewModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Привязан E-Mail или нет. */
    public var emailBinded: Bool?

    public init(emailBinded: Bool? = nil) {
        self.emailBinded = emailBinded
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case emailBinded
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(emailBinded, forKey: .emailBinded)
    }
}

