//
// CountryViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель представления страны. */
public struct CountryViewModel: Codable, JSONEncodable, Hashable {

    /** Id страны. */
    public var id: Int?
    /** Наименование страны. */
    public var name: String?
    /** Код страны (по стандарту ISO-3166 alpha-2). */
    public var code: String?

    public init(id: Int? = nil, name: String? = nil, code: String? = nil) {
        self.id = id
        self.name = name
        self.code = code
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case code
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(code, forKey: .code)
    }
}
