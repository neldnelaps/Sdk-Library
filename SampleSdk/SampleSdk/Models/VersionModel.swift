//
// VersionModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель версии. */
public struct VersionModel: Codable, JSONEncodable, Hashable {

    /** Мажорная версия. */
    public var major: Int?
    /** Минорная версия. */
    public var minor: Int?
    /** Билд. */
    public var build: Int?
    /** Ревизия. */
    public var revision: Int?

    public init(major: Int? = nil, minor: Int? = nil, build: Int? = nil, revision: Int? = nil) {
        self.major = major
        self.minor = minor
        self.build = build
        self.revision = revision
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case major
        case minor
        case build
        case revision
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(major, forKey: .major)
        try container.encodeIfPresent(minor, forKey: .minor)
        try container.encodeIfPresent(build, forKey: .build)
        try container.encodeIfPresent(revision, forKey: .revision)
    }
}

