//
// PersonalOfferAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class PersonalOfferAPI {

    /**
     Возвращает содержимое персонального предложения для пользователя.
     
     - parameter logicalName: (path) Логическое имя атрибута. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func personalOfferGetContents(logicalName: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfObject?, _ error: Error?) -> Void)) -> RequestTask {
        return personalOfferGetContentsWithRequestBuilder(logicalName: logicalName).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает содержимое персонального предложения для пользователя.
     - GET /v1.2/user/personalOffer/{logicalName}/contents
     - parameter logicalName: (path) Логическое имя атрибута. 
     - returns: RequestBuilder<ResultModelOfObject> 
     */
    open class func personalOfferGetContentsWithRequestBuilder(logicalName: String) -> RequestBuilder<ResultModelOfObject> {
        var localVariablePath = "/v1.2/user/personalOffer/{logicalName}/contents"
        let logicalNamePreEscape = "\(APIHelper.mapValueToPathItem(logicalName))"
        let logicalNamePostEscape = logicalNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{logicalName}", with: logicalNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfObject>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Возвращает содержимое персонального предложения для пользователя.
     
     - parameter logicalName: (path) Логическое имя атрибута. 
     - parameter model: (query) Модель данных. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func personalOfferSetContents(logicalName: String, model: PersonalOfferValueModel, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModel?, _ error: Error?) -> Void)) -> RequestTask {
        return personalOfferSetContentsWithRequestBuilder(logicalName: logicalName, model: model).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает содержимое персонального предложения для пользователя.
     - POST /v1.2/user/personalOffer/{logicalName}/accept
     - parameter logicalName: (path) Логическое имя атрибута. 
     - parameter model: (query) Модель данных. 
     - returns: RequestBuilder<ResultModel> 
     */
    open class func personalOfferSetContentsWithRequestBuilder(logicalName: String, model: PersonalOfferValueModel) -> RequestBuilder<ResultModel> {
        var localVariablePath = "/v1.2/user/personalOffer/{logicalName}/accept"
        let logicalNamePreEscape = "\(APIHelper.mapValueToPathItem(logicalName))"
        let logicalNamePostEscape = logicalNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{logicalName}", with: logicalNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "model": model.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
