//
// UrlAuthViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель URL-адреса для загрузки каталога (с авторизацией). */
public struct UrlAuthViewModel: Codable, JSONEncodable, Hashable {

    /** ID. */
    public var id: Int?
    /** URL-адрес. */
    public var url: String?
    public var authType: UrlAuthType?
    /** Логин. */
    public var login: String?
    /** Пароль. */
    public var password: String?
    /** Сертификат. */
    public var cert: String?
    /** Идентификатор. */
    public var identifier: String?

    public init(id: Int? = nil, url: String? = nil, authType: UrlAuthType? = nil, login: String? = nil, password: String? = nil, cert: String? = nil, identifier: String? = nil) {
        self.id = id
        self.url = url
        self.authType = authType
        self.login = login
        self.password = password
        self.cert = cert
        self.identifier = identifier
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case url
        case authType
        case login
        case password
        case cert
        case identifier
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(authType, forKey: .authType)
        try container.encodeIfPresent(login, forKey: .login)
        try container.encodeIfPresent(password, forKey: .password)
        try container.encodeIfPresent(cert, forKey: .cert)
        try container.encodeIfPresent(identifier, forKey: .identifier)
    }
}

