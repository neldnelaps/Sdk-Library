//
// VerificationModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель верификации нотификатора клиента. */
public struct VerificationModel: Codable, JSONEncodable, Hashable {

    /** Значение нотификатора. */
    public var notifierValue: String?

    public init(notifierValue: String? = nil) {
        self.notifierValue = notifierValue
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case notifierValue
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(notifierValue, forKey: .notifierValue)
    }
}

