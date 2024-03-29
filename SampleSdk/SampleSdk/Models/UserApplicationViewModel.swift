//
// UserApplicationViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** View-модель приложения пользователя. */
public struct UserApplicationViewModel: Codable, JSONEncodable, Hashable {

    /** Идентификатор пользовательского приложения. */
    public var id: Int?
    /** Описание приложения. */
    public var description: String?
    /** Партнёр. */
    public var partnerName: String?
    /** Scope, на который приложению разрешен доступ. */
    public var scope: String?

    public init(id: Int? = nil, description: String? = nil, partnerName: String? = nil, scope: String? = nil) {
        self.id = id
        self.description = description
        self.partnerName = partnerName
        self.scope = scope
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case description
        case partnerName
        case scope
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(partnerName, forKey: .partnerName)
        try container.encodeIfPresent(scope, forKey: .scope)
    }
}

