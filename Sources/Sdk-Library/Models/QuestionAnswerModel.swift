//
// QuestionAnswerModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель ответа на вопрос анкеты. */
public struct QuestionAnswerModel: Codable, JSONEncodable, Hashable {

    /** Идентификатор вопроса. */
    public var questionId: Int?
    /** Идентификатор фиксированного ответа. */
    public var fixedAnswerIds: [Int]?
    /** Значение ответа. */
    public var value: String?
    /** Идентификатор набора значений. */
    public var tag: String?
    /** Идентификатор группы вопросов. */
    public var questionGroupId: Int?

    public init(questionId: Int? = nil, fixedAnswerIds: [Int]? = nil, value: String? = nil, tag: String? = nil, questionGroupId: Int? = nil) {
        self.questionId = questionId
        self.fixedAnswerIds = fixedAnswerIds
        self.value = value
        self.tag = tag
        self.questionGroupId = questionGroupId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case questionId
        case fixedAnswerIds
        case value
        case tag
        case questionGroupId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(questionId, forKey: .questionId)
        try container.encodeIfPresent(fixedAnswerIds, forKey: .fixedAnswerIds)
        try container.encodeIfPresent(value, forKey: .value)
        try container.encodeIfPresent(tag, forKey: .tag)
        try container.encodeIfPresent(questionGroupId, forKey: .questionGroupId)
    }
}

