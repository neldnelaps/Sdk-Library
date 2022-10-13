//
// TargetGroupFilterViewModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TargetGroupFilterViewModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Список идентификаторов выбранных целевых аудиторий. */
    public var targetGroups: [TargetGroupBriefViewModel]?

    public init(targetGroups: [TargetGroupBriefViewModel]? = nil) {
        self.targetGroups = targetGroups
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case targetGroups
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(targetGroups, forKey: .targetGroups)
    }
}
