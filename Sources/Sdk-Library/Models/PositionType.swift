//
// PositionType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Тип позиции. */
public enum PositionType: String, Codable, CaseIterable {
    case normal = "Normal"
    case birthday = "Birthday"
    case action = "Action"
}