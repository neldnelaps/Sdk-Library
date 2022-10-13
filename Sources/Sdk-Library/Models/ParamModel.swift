//
// ParamModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Дополнительный параметр. */
public struct ParamModel: Codable, JSONEncodable, Hashable {

    /** Имя параметра. */
    public var name: String?
    /** Значение параметра. */
    public var value: String?
    public var type: AdditionalParamType?

    public init(name: String? = nil, value: String? = nil, type: AdditionalParamType? = nil) {
        self.name = name
        self.value = value
        self.type = type
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case value
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(value, forKey: .value)
        try container.encodeIfPresent(type, forKey: .type)
    }
}

