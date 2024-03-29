//
// QuestionGroupModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель группы вопросов. */
public struct QuestionGroupModel: Codable, JSONEncodable, Hashable {

    public var type: QuestionnaireItemModelType?
    /** Идентификатор. */
    public var id: Int?
    /** Название. */
    public var name: String?
    /** Порядок. */
    public var order: Int?
    /** Вопросы. */
    public var questions: [QuestionModel]?

    public init(type: QuestionnaireItemModelType? = nil, id: Int? = nil, name: String? = nil, order: Int? = nil, questions: [QuestionModel]? = nil) {
        self.type = type
        self.id = id
        self.name = name
        self.order = order
        self.questions = questions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case id
        case name
        case order
        case questions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(order, forKey: .order)
        try container.encodeIfPresent(questions, forKey: .questions)
    }
}

