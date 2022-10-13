//
// DeviceCapabilityAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class DeviceCapabilityAPI {

    /**
     Возвращает информацию о всех настройках кассы.
     
     - parameter deviceTypeId: (path) Внутренний идентификатор типа кассы. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func deviceCapabilityGetAll(deviceTypeId: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfListOfDeviceCapabilityViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return deviceCapabilityGetAllWithRequestBuilder(deviceTypeId: deviceTypeId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает информацию о всех настройках кассы.
     - GET /v1.2/DeviceCapabilities/{deviceTypeId}
     - parameter deviceTypeId: (path) Внутренний идентификатор типа кассы. 
     - returns: RequestBuilder<ResultModelOfListOfDeviceCapabilityViewModel> 
     */
    open class func deviceCapabilityGetAllWithRequestBuilder(deviceTypeId: Int) -> RequestBuilder<ResultModelOfListOfDeviceCapabilityViewModel> {
        var localVariablePath = "/v1.2/DeviceCapabilities/{deviceTypeId}"
        let deviceTypeIdPreEscape = "\(APIHelper.mapValueToPathItem(deviceTypeId))"
        let deviceTypeIdPostEscape = deviceTypeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{deviceTypeId}", with: deviceTypeIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfListOfDeviceCapabilityViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}