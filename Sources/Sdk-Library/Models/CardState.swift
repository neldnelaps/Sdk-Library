//
// CardState.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Статус. */
public enum CardState: String, Codable, CaseIterable {
    case emitted = "Emitted"
    case packed = "Packed"
    case activated = "Activated"
    case replaced = "Replaced"
    case creating = "Creating"
    case created = "Created"
    case prepared = "Prepared"
    case issued = "Issued"
    case expired = "Expired"
}
