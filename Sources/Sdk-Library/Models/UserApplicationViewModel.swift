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

/** Модель OAuth-приложения. */
public struct UserApplicationViewModel: Codable, JSONEncodable, Hashable {

    /** Внутренний идентификатор OAuth-приложения. */
    public var id: Int?
    /** Описание OAuth-приложения. */
    public var description: String?
    /** Партнер. */
    public var partnerName: String?
    /** Набор прав, доступных приложению. */
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

