//
// ChequeRequestModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Информация о чеке. */
public struct ChequeRequestModel: Codable, JSONEncodable, Hashable {

    /** Номер чека. */
    public var number: String?
    /** Дата и время чека. */
    public var date: Date?
    /** Позиции в чеке. */
    public var lines: [ChequeLineRequestModel]?

    public init(number: String? = nil, date: Date? = nil, lines: [ChequeLineRequestModel]? = nil) {
        self.number = number
        self.date = date
        self.lines = lines
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case number
        case date
        case lines
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(number, forKey: .number)
        try container.encodeIfPresent(date, forKey: .date)
        try container.encodeIfPresent(lines, forKey: .lines)
    }
}

