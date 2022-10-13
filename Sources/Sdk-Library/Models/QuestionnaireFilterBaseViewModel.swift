//
// QuestionnaireFilterBaseViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct QuestionnaireFilterBaseViewModel: Codable, JSONEncodable, Hashable {

    public var id: Int?
    public var name: String?
    public var isDeletedFilterType: Bool?
    public var processParameters: String?
    public var questionId: Int?
    public var operation: FilterOperation?
    public var mode: FilterDateMode?
    public var periodicity: FilterDatePeriodicity?
    public var startOfPeriod: FilterDateUnit?
    public var unit: FilterDateUnit?
    public var firstIntValue: Int?
    public var secondIntValue: Int?
    public var firstDoubleValue: Double?
    public var secondDoubleValue: Double?
    public var firstDateValue: Date?
    public var secondDateValue: Date?
    public var stringValue: String?
    public var fixedAnswerIds: [Int]?
    public var fixedAnswerNames: [String]?
    public var boolValue: Bool?
    public var questionType: QuestionType?

    public init(id: Int? = nil, name: String? = nil, isDeletedFilterType: Bool? = nil, processParameters: String? = nil, questionId: Int? = nil, operation: FilterOperation? = nil, mode: FilterDateMode? = nil, periodicity: FilterDatePeriodicity? = nil, startOfPeriod: FilterDateUnit? = nil, unit: FilterDateUnit? = nil, firstIntValue: Int? = nil, secondIntValue: Int? = nil, firstDoubleValue: Double? = nil, secondDoubleValue: Double? = nil, firstDateValue: Date? = nil, secondDateValue: Date? = nil, stringValue: String? = nil, fixedAnswerIds: [Int]? = nil, fixedAnswerNames: [String]? = nil, boolValue: Bool? = nil, questionType: QuestionType? = nil) {
        self.id = id
        self.name = name
        self.isDeletedFilterType = isDeletedFilterType
        self.processParameters = processParameters
        self.questionId = questionId
        self.operation = operation
        self.mode = mode
        self.periodicity = periodicity
        self.startOfPeriod = startOfPeriod
        self.unit = unit
        self.firstIntValue = firstIntValue
        self.secondIntValue = secondIntValue
        self.firstDoubleValue = firstDoubleValue
        self.secondDoubleValue = secondDoubleValue
        self.firstDateValue = firstDateValue
        self.secondDateValue = secondDateValue
        self.stringValue = stringValue
        self.fixedAnswerIds = fixedAnswerIds
        self.fixedAnswerNames = fixedAnswerNames
        self.boolValue = boolValue
        self.questionType = questionType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case isDeletedFilterType
        case processParameters
        case questionId
        case operation
        case mode
        case periodicity
        case startOfPeriod
        case unit
        case firstIntValue
        case secondIntValue
        case firstDoubleValue
        case secondDoubleValue
        case firstDateValue
        case secondDateValue
        case stringValue
        case fixedAnswerIds
        case fixedAnswerNames
        case boolValue
        case questionType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(isDeletedFilterType, forKey: .isDeletedFilterType)
        try container.encodeIfPresent(processParameters, forKey: .processParameters)
        try container.encodeIfPresent(questionId, forKey: .questionId)
        try container.encodeIfPresent(operation, forKey: .operation)
        try container.encodeIfPresent(mode, forKey: .mode)
        try container.encodeIfPresent(periodicity, forKey: .periodicity)
        try container.encodeIfPresent(startOfPeriod, forKey: .startOfPeriod)
        try container.encodeIfPresent(unit, forKey: .unit)
        try container.encodeIfPresent(firstIntValue, forKey: .firstIntValue)
        try container.encodeIfPresent(secondIntValue, forKey: .secondIntValue)
        try container.encodeIfPresent(firstDoubleValue, forKey: .firstDoubleValue)
        try container.encodeIfPresent(secondDoubleValue, forKey: .secondDoubleValue)
        try container.encodeIfPresent(firstDateValue, forKey: .firstDateValue)
        try container.encodeIfPresent(secondDateValue, forKey: .secondDateValue)
        try container.encodeIfPresent(stringValue, forKey: .stringValue)
        try container.encodeIfPresent(fixedAnswerIds, forKey: .fixedAnswerIds)
        try container.encodeIfPresent(fixedAnswerNames, forKey: .fixedAnswerNames)
        try container.encodeIfPresent(boolValue, forKey: .boolValue)
        try container.encodeIfPresent(questionType, forKey: .questionType)
    }
}

