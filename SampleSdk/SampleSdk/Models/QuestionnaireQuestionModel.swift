//
// QuestionnaireQuestionModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Базовый класс для модели вопроса. */
public struct QuestionnaireQuestionModel: Codable, JSONEncodable, Hashable {

    public var type: QuestionnaireItemModelType?
    /** Идентификатор. */
    public var id: Int?
    /** Название. */
    public var name: String?
    /** Порядок. */
    public var order: Int?

    public init(type: QuestionnaireItemModelType? = nil, id: Int? = nil, name: String? = nil, order: Int? = nil) {
        self.type = type
        self.id = id
        self.name = name
        self.order = order
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case id
        case name
        case order
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(order, forKey: .order)
    }
}

