//
// AccountAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AccountAPI {

    /**
     Возвращает информацию о счетах клиента.
     
     - parameter personId: (path) Внутренний идентификатор клиента. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func accountGetAccountModels(personId: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfListOfAccountViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return accountGetAccountModelsWithRequestBuilder(personId: personId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает информацию о счетах клиента.
     - GET /v1.2/Users/{personId}/Accounts
     - parameter personId: (path) Внутренний идентификатор клиента. 
     - returns: RequestBuilder<ResultModelOfListOfAccountViewModel> 
     */
    open class func accountGetAccountModelsWithRequestBuilder(personId: Int) -> RequestBuilder<ResultModelOfListOfAccountViewModel> {
        var localVariablePath = "/v1.2/Users/{personId}/Accounts"
        let personIdPreEscape = "\(APIHelper.mapValueToPathItem(personId))"
        let personIdPostEscape = personIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{personId}", with: personIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfListOfAccountViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}