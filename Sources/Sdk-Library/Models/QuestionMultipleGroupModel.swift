//
// QuestionMultipleGroupModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель группы вопросов с множественными ответами. */
public struct QuestionMultipleGroupModel: Codable, JSONEncodable, Hashable {

    public var type: QuestionnaireItemModelType?
    /** Идентификатор. */
    public var id: Int?
    /** Название. */
    public var name: String?
    /** Порядок. */
    public var order: Int?
    /** Вопросы. */
    public var questions: [QuestionModel]?
    /** Максимально допустимое кол-во ответов. */
    public var maxAnswersCount: Int?
    /** Ответы. */
    public var answers: [AnswersModel]?

    public init(type: QuestionnaireItemModelType? = nil, id: Int? = nil, name: String? = nil, order: Int? = nil, questions: [QuestionModel]? = nil, maxAnswersCount: Int? = nil, answers: [AnswersModel]? = nil) {
        self.type = type
        self.id = id
        self.name = name
        self.order = order
        self.questions = questions
        self.maxAnswersCount = maxAnswersCount
        self.answers = answers
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case id
        case name
        case order
        case questions
        case maxAnswersCount
        case answers
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(order, forKey: .order)
        try container.encodeIfPresent(questions, forKey: .questions)
        try container.encodeIfPresent(maxAnswersCount, forKey: .maxAnswersCount)
        try container.encodeIfPresent(answers, forKey: .answers)
    }
}

