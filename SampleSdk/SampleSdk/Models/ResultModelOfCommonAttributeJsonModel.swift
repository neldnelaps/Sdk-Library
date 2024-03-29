//
// ResultModelOfCommonAttributeJsonModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель результата с данными. */
public struct ResultModelOfCommonAttributeJsonModel: Codable, JSONEncodable, Hashable {

    public var result: Result?
    /** Универсальная \"конвертация\" json строки в объект. */
    public var data: AnyCodable?

    public init(result: Result? = nil, data: AnyCodable? = nil) {
        self.result = result
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case result
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(result, forKey: .result)
        try container.encodeIfPresent(data, forKey: .data)
    }
}

