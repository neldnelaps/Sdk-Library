//
// UserAttributeType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum UserAttributeType: String, Codable, CaseIterable {
    case notifier = "Notifier"
    case question = "Question"
    case common = "Common"
    case personalOffer = "PersonalOffer"
    case statusSystem = "StatusSystem"
}
