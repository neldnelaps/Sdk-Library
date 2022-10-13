//
// PostConfirmCodeModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель для отправки кода подтверждения. */
public struct PostConfirmCodeModel: Codable, JSONEncodable, Hashable {

    /** Код подтверждения. */
    public var confirmCode: String?
    /** Пароль. */
    public var password: String?

    public init(confirmCode: String? = nil, password: String? = nil) {
        self.confirmCode = confirmCode
        self.password = password
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case confirmCode
        case password
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(confirmCode, forKey: .confirmCode)
        try container.encodeIfPresent(password, forKey: .password)
    }
}
