//
// TemplateSmsViewModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TemplateSmsViewModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Номер телефона. */
    public var phone: String?

    public init(phone: String? = nil) {
        self.phone = phone
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case phone
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(phone, forKey: .phone)
    }
}
