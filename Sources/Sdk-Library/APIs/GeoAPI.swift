//
// GeoAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class GeoAPI {

    /**
     Передача информации о местоположении пользователя.
     
     - parameter coordinate: (query) Координаты местоположения пользователя. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func geoPostCoordinate(coordinate: GeoCoordinateModel, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModel?, _ error: Error?) -> Void)) -> RequestTask {
        return geoPostCoordinateWithRequestBuilder(coordinate: coordinate).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Передача информации о местоположении пользователя.
     - POST /v1.2/Geo/Coordinate
     - parameter coordinate: (query) Координаты местоположения пользователя. 
     - returns: RequestBuilder<ResultModel> 
     */
    open class func geoPostCoordinateWithRequestBuilder(coordinate: GeoCoordinateModel) -> RequestBuilder<ResultModel> {
        let localVariablePath = "/v1.2/Geo/Coordinate"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "coordinate": coordinate.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
