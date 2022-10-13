//
// ConfigurationScriptViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Информация о скрипте. */
public struct ConfigurationScriptViewModel: Codable, JSONEncodable, Hashable {

    /** Идентификатор скрипта. */
    public var id: String?
    /** Дата исполнения скрипта. */
    public var executionDate: Date?
    /** Идентификатор деплоя, в котором выполнился скрипт. */
    public var configDeployId: UUID?
    /** Время выполнения в мс. */
    public var duration: Int?
    /** Название БД. */
    public var dbName: String?

    public init(id: String? = nil, executionDate: Date? = nil, configDeployId: UUID? = nil, duration: Int? = nil, dbName: String? = nil) {
        self.id = id
        self.executionDate = executionDate
        self.configDeployId = configDeployId
        self.duration = duration
        self.dbName = dbName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case executionDate
        case configDeployId
        case duration
        case dbName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(executionDate, forKey: .executionDate)
        try container.encodeIfPresent(configDeployId, forKey: .configDeployId)
        try container.encodeIfPresent(duration, forKey: .duration)
        try container.encodeIfPresent(dbName, forKey: .dbName)
    }
}
