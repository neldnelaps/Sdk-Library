//
// PasswordRequirementsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class PasswordRequirementsAPI {

    /**
     Возвращает список требований к паролям.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func passwordRequirementsGetAll(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfListOfPasswordRuleViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return passwordRequirementsGetAllWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает список требований к паролям.
     - GET /v1.2/Password/Requirements/Settings
     - returns: RequestBuilder<ResultModelOfListOfPasswordRuleViewModel> 
     */
    open class func passwordRequirementsGetAllWithRequestBuilder() -> RequestBuilder<ResultModelOfListOfPasswordRuleViewModel> {
        let localVariablePath = "/v1.2/Password/Requirements/Settings"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfListOfPasswordRuleViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Получить список активных правил проверок пароля.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func passwordRequirementsGetAllActiveRules(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfListOfPasswordRequirementViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return passwordRequirementsGetAllActiveRulesWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить список активных правил проверок пароля.
     - GET /v1.2/Password/Requirements
     - returns: RequestBuilder<ResultModelOfListOfPasswordRequirementViewModel> 
     */
    open class func passwordRequirementsGetAllActiveRulesWithRequestBuilder() -> RequestBuilder<ResultModelOfListOfPasswordRequirementViewModel> {
        let localVariablePath = "/v1.2/Password/Requirements"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfListOfPasswordRequirementViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
