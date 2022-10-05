//
// PersonalOfferValueModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель персонального предложения. */
public struct PersonalOfferValueModel: Codable, JSONEncodable, Hashable {

    /** JSON string. */
    public var rawJson: String?
    public var contents: IPersonalOfferContentAccept?

    public init(rawJson: String? = nil, contents: IPersonalOfferContentAccept? = nil) {
        self.rawJson = rawJson
        self.contents = contents
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case rawJson
        case contents
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(rawJson, forKey: .rawJson)
        try container.encodeIfPresent(contents, forKey: .contents)
    }
}
