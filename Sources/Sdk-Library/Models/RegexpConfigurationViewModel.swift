//
// RegexpConfigurationViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** View-модель конфигурации регулярного выражения. */
public struct RegexpConfigurationViewModel: Codable, JSONEncodable, Hashable {

    /** Идентификатор. */
    public var id: Int?
    /** Название. */
    public var name: String?
    /** Регулярное выражение. */
    public var expression: String?
    /** Описание. */
    public var description: String?
    /** Сообщение об ошибке. */
    public var errorMessage: String?

    public init(id: Int? = nil, name: String? = nil, expression: String? = nil, description: String? = nil, errorMessage: String? = nil) {
        self.id = id
        self.name = name
        self.expression = expression
        self.description = description
        self.errorMessage = errorMessage
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case expression
        case description
        case errorMessage
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(expression, forKey: .expression)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(errorMessage, forKey: .errorMessage)
    }
}

