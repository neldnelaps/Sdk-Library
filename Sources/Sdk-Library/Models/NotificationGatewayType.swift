//
// NotificationGatewayType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum NotificationGatewayType: String, Codable, CaseIterable {
    case sms = "Sms"
    case email = "Email"
    case push = "Push"
    case viber = "Viber"
    case socialsNetworks = "SocialsNetworks"
    case chatBot = "ChatBot"
}