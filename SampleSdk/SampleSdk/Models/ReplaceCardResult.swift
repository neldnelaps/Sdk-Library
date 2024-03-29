//
// ReplaceCardResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Результат замены карты. */
public struct ReplaceCardResult: Codable, JSONEncodable, Hashable {

    public var replaceCardState: ReplaceCardState?
    /** Текст ошибки. */
    public var errorMessage: String?
    public var authResult: AuthResultModel?

    public init(replaceCardState: ReplaceCardState? = nil, errorMessage: String? = nil, authResult: AuthResultModel? = nil) {
        self.replaceCardState = replaceCardState
        self.errorMessage = errorMessage
        self.authResult = authResult
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case replaceCardState
        case errorMessage
        case authResult
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(replaceCardState, forKey: .replaceCardState)
        try container.encodeIfPresent(errorMessage, forKey: .errorMessage)
        try container.encodeIfPresent(authResult, forKey: .authResult)
    }
}

