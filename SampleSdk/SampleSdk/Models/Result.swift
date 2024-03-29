//
// Result.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Состояние результата. */
public struct Result: Codable, JSONEncodable, Hashable {

    public var state: ResultState?
    /** Сообщение. */
    public var message: String?
    /** Код сообщения. */
    public var messageCode: String?
    /** Исключение. */
    public var exception: AnyCodable?
    /** Ошибки валидации. */
    public var validationErrors: [ValidationError]?

    public init(state: ResultState? = nil, message: String? = nil, messageCode: String? = nil, exception: AnyCodable? = nil, validationErrors: [ValidationError]? = nil) {
        self.state = state
        self.message = message
        self.messageCode = messageCode
        self.exception = exception
        self.validationErrors = validationErrors
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case state
        case message
        case messageCode
        case exception
        case validationErrors
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(message, forKey: .message)
        try container.encodeIfPresent(messageCode, forKey: .messageCode)
        try container.encodeIfPresent(exception, forKey: .exception)
        try container.encodeIfPresent(validationErrors, forKey: .validationErrors)
    }
}

