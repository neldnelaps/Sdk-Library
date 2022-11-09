//
//  Client.swift
//  Playground.iOS
//
//  Created by Nelaps on 02.11.2022.
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

import Sdk_Library

open class AuthAPI {

    /**
     Авторизация
     - parameter username: логин
     - parameter password: пароль
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func authtorization(username: String, password: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AuthResultModel?, _ error: Error?) -> Void)) -> RequestTask {
        return authtorizationRequestBuilder(username: username, password: password).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }
    
    /**
     - POST /authorizationService/token
     - returns: RequestBuilder<AuthResultModel>
     */
    open class func authtorizationRequestBuilder(username: String, password: String) -> RequestBuilder<AuthResultModel> {
        let localVariablePath = "/token"
        var localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        localVariableURLString = localVariableURLString.replacingOccurrences(of: "publicapi", with: "authorizationService")
        let localVariableParameters: [String: Any] = ["grant_type":"password", "username":username, "password":password]

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = ["Content-Type":"application/x-www-form-urlencoded"]
        
        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AuthResultModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
    
    /**
     Обновление токена
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func refresh(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AuthResultModel?, _ error: Error?) -> Void)) -> RequestTask {
        return refreshRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }
    
    /**
     Обновление токена
     - POST /authorizationservice/token?refresh_token=111111aaaaa
     - returns: RequestBuilder<AuthResultModel>
     */
    open class func refreshRequestBuilder() -> RequestBuilder<AuthResultModel> {
        let localVariablePath = "/token"
        var localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        localVariableURLString = localVariableURLString.replacingOccurrences(of: "publicapi", with: "authorizationService")
        let localVariableParameters: [String: Any] = ["grant_type":"refresh_token", "username":"admin", "refresh_token":Client.RefreshToken!]
        
        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = ["Content-Type":"application/x-www-form-urlencoded"]
        
        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AuthResultModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
