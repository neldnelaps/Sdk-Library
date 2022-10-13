//
// StatusSystemAttributeViewModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct StatusSystemAttributeViewModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Статусы. */
    public var statuses: [SystemApiStatusViewModel]?
    /** Видимость. */
    public var isHidden: Bool?
    public var mergeMode: AttributesMergeMode?
    /** Удален ли атрибут. */
    public var isDeleted: Bool?
    /** Описание. */
    public var description: String?
    /** Идентификатор файла с описанием. */
    public var fileExternalId: UUID?
    public var statusUpdatePeriod: TimeUnit?
    public var counter: CounterViewModel?

    public init(statuses: [SystemApiStatusViewModel]? = nil, isHidden: Bool? = nil, mergeMode: AttributesMergeMode? = nil, isDeleted: Bool? = nil, description: String? = nil, fileExternalId: UUID? = nil, statusUpdatePeriod: TimeUnit? = nil, counter: CounterViewModel? = nil) {
        self.statuses = statuses
        self.isHidden = isHidden
        self.mergeMode = mergeMode
        self.isDeleted = isDeleted
        self.description = description
        self.fileExternalId = fileExternalId
        self.statusUpdatePeriod = statusUpdatePeriod
        self.counter = counter
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case statuses
        case isHidden
        case mergeMode
        case isDeleted
        case description
        case fileExternalId
        case statusUpdatePeriod
        case counter
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(statuses, forKey: .statuses)
        try container.encodeIfPresent(isHidden, forKey: .isHidden)
        try container.encodeIfPresent(mergeMode, forKey: .mergeMode)
        try container.encodeIfPresent(isDeleted, forKey: .isDeleted)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(fileExternalId, forKey: .fileExternalId)
        try container.encodeIfPresent(statusUpdatePeriod, forKey: .statusUpdatePeriod)
        try container.encodeIfPresent(counter, forKey: .counter)
    }
}

