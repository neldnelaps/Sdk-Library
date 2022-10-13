//
// CounterTargetDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Параметр счетчика. */
public struct CounterTargetDto: Codable, JSONEncodable, Hashable {

    public var value: CounterTarget?

    public init(value: CounterTarget? = nil) {
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(value, forKey: .value)
    }
}

