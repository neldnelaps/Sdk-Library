//
// StatusItemViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** ViewModel статуса. */
public struct StatusItemViewModel: Codable, JSONEncodable, Hashable {

    /** Пороговое значение. */
    public var treshold: Double?
    /** Название статуса. */
    public var name: String?
    /** Количество ячеек. */
    public var count: Int?
    /** Этот уровень у пользователя сейчас. */
    public var isCurrent: Bool?
    /** Сумма до этого уровня. */
    public var amountToThisLevel: Double?

    public init(treshold: Double? = nil, name: String? = nil, count: Int? = nil, isCurrent: Bool? = nil, amountToThisLevel: Double? = nil) {
        self.treshold = treshold
        self.name = name
        self.count = count
        self.isCurrent = isCurrent
        self.amountToThisLevel = amountToThisLevel
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case treshold
        case name
        case count
        case isCurrent
        case amountToThisLevel
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(treshold, forKey: .treshold)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(count, forKey: .count)
        try container.encodeIfPresent(isCurrent, forKey: .isCurrent)
        try container.encodeIfPresent(amountToThisLevel, forKey: .amountToThisLevel)
    }
}

