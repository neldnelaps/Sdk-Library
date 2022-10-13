//
// ActionModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Фильтр для списка счетов кассы. */
public struct ActionModel: Codable, JSONEncodable, Hashable {

    /** Идентификатор. */
    public var actionId: Int?
    /** Тип. */
    public var actionType: String?
    /** Длительность расчета в миллисекундах. */
    public var calculationDuration: Double?
    /** Результаты. */
    public var results: [ActionResultModel]?

    public init(actionId: Int? = nil, actionType: String? = nil, calculationDuration: Double? = nil, results: [ActionResultModel]? = nil) {
        self.actionId = actionId
        self.actionType = actionType
        self.calculationDuration = calculationDuration
        self.results = results
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case actionId
        case actionType
        case calculationDuration
        case results
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(actionId, forKey: .actionId)
        try container.encodeIfPresent(actionType, forKey: .actionType)
        try container.encodeIfPresent(calculationDuration, forKey: .calculationDuration)
        try container.encodeIfPresent(results, forKey: .results)
    }
}

