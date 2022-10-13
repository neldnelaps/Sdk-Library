//
// FilterDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Фильтр для цепочек действий. */
public struct FilterDto: Codable, JSONEncodable, Hashable {

    /** Имя фильтра. */
    public var name: String?
    /** Параметры обработки. */
    public var processParameters: String?

    public init(name: String? = nil, processParameters: String? = nil) {
        self.name = name
        self.processParameters = processParameters
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case processParameters
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(processParameters, forKey: .processParameters)
    }
}

