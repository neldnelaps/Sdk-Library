//
// PlatformType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Клиенская платформа. */
public enum PlatformType: String, Codable, CaseIterable {
    case ios = "Ios"
    case android = "Android"
    case windowsPhone = "WindowsPhone"
    case harmony = "Harmony"
    case unknown = "Unknown"
}