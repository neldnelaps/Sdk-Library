//
// ConfigurationListViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Для редактирования. */
public struct ConfigurationListViewModel: Codable, JSONEncodable, Hashable {

    /** Коллекция новых значений. */
    public var values: [ConfigurationViewModel]?

    public init(values: [ConfigurationViewModel]? = nil) {
        self.values = values
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case values
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(values, forKey: .values)
    }
}

