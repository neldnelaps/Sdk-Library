//
// ActionTypeViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель для типа действия. */
public struct ActionTypeViewModel: Codable, JSONEncodable, Hashable {

    /** Логическое имя действия. */
    public var logicalName: String?
    /** Удаленный тип. */
    public var isDeleted: Bool?

    public init(logicalName: String? = nil, isDeleted: Bool? = nil) {
        self.logicalName = logicalName
        self.isDeleted = isDeleted
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case logicalName
        case isDeleted
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(logicalName, forKey: .logicalName)
        try container.encodeIfPresent(isDeleted, forKey: .isDeleted)
    }
}
