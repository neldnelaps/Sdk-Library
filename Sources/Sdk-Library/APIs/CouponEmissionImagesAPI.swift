//
// CouponEmissionImagesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CouponEmissionImagesAPI {

    /**
     Возвращает изображение выпуска купонов.
     
     - parameter emissionId: (path) Внутренний идентификатор выпуска купонов. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func couponEmissionImagesGetImage(emissionId: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfImageFileViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return couponEmissionImagesGetImageWithRequestBuilder(emissionId: emissionId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает изображение выпуска купонов.
     - GET /v1.2/emissions/coupons/{emissionId}/Image
     - parameter emissionId: (path) Внутренний идентификатор выпуска купонов. 
     - returns: RequestBuilder<ResultModelOfImageFileViewModel> 
     */
    open class func couponEmissionImagesGetImageWithRequestBuilder(emissionId: Int) -> RequestBuilder<ResultModelOfImageFileViewModel> {
        var localVariablePath = "/v1.2/emissions/coupons/{emissionId}/Image"
        let emissionIdPreEscape = "\(APIHelper.mapValueToPathItem(emissionId))"
        let emissionIdPostEscape = emissionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{emissionId}", with: emissionIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfImageFileViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
