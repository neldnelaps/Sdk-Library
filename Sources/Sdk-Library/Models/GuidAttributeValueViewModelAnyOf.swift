//
// GuidAttributeValueViewModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GuidAttributeValueViewModelAnyOf: Codable, JSONEncodable, Hashable {

    public var file: FileViewModel?

    public init(file: FileViewModel? = nil) {
        self.file = file
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case file
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(file, forKey: .file)
    }
}

