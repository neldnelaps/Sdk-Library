//
// AuthResultModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Результат авторизации. */
public struct AuthResultModel: Codable, JSONEncodable, Hashable {

    /** Тип маркера доступа. */
    public var tokenType: String?
    /** Маркер доступа. */
    public var accessToken: String?
    /** Маркер обновления доступа. */
    public var refreshToken: String?
    /** Срок действия маркера доступа. */
    public var expiresIn: Int?

    public init(tokenType: String? = nil, accessToken: String? = nil, refreshToken: String? = nil, expiresIn: Int? = nil) {
        self.tokenType = tokenType
        self.accessToken = accessToken
        self.refreshToken = refreshToken
        self.expiresIn = expiresIn
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case tokenType = "token_type"
        case accessToken = "access_token"
        case refreshToken = "refresh_token"
        case expiresIn = "expires_in"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(tokenType, forKey: .tokenType)
        try container.encodeIfPresent(accessToken, forKey: .accessToken)
        try container.encodeIfPresent(refreshToken, forKey: .refreshToken)
        try container.encodeIfPresent(expiresIn, forKey: .expiresIn)
    }
}

