//
// RegistrationAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class RegistrationAPI {

    /**
     Пакетное подтверждение регистрации клиентов.
     
     - parameter description: (query) Описание пакетной загрузки. 
     - parameter file: (query) file to upload 
     - parameter setRandomPasswords: (query) Устанавливать сгенерированные пароли клиентам без паролей. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func registrationBatchRegistrationConfirm(description: String, file: URL, setRandomPasswords: Bool? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfInt32?, _ error: Error?) -> Void)) -> RequestTask {
        return registrationBatchRegistrationConfirmWithRequestBuilder(description: description, file: file, setRandomPasswords: setRandomPasswords).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Пакетное подтверждение регистрации клиентов.
     - PUT /v1.2/Registration/BatchRegistrationConfirm
     - parameter description: (query) Описание пакетной загрузки. 
     - parameter file: (query) file to upload 
     - parameter setRandomPasswords: (query) Устанавливать сгенерированные пароли клиентам без паролей. (optional)
     - returns: RequestBuilder<ResultModelOfInt32> 
     */
    open class func registrationBatchRegistrationConfirmWithRequestBuilder(description: String, file: URL, setRandomPasswords: Bool? = nil) -> RequestBuilder<ResultModelOfInt32> {
        let localVariablePath = "/v1.2/Registration/BatchRegistrationConfirm"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "description": description.encodeToJSON(),
            "setRandomPasswords": setRandomPasswords?.encodeToJSON(),
            "file": file.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfInt32>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Загрузки.
     
     - parameter from: (query) From. (optional)
     - parameter count: (query) Count. (optional)
     - parameter batchUploadFilterModelState: (query)  (optional)
     - parameter batchUploadFilterModelIncludeDeleted: (query)  (optional)
     - parameter batchUploadFilterModelFromDate: (query)  (optional)
     - parameter batchUploadFilterModelToDate: (query)  (optional)
     - parameter batchUploadFilterModelAuthorId: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func registrationGetConfirmRegistrationBatch(from: Int? = nil, count: Int? = nil, batchUploadFilterModelState: BatchState? = nil, batchUploadFilterModelIncludeDeleted: Bool? = nil, batchUploadFilterModelFromDate: String? = nil, batchUploadFilterModelToDate: String? = nil, batchUploadFilterModelAuthorId: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfPagedViewModelOfBatchUploadModel?, _ error: Error?) -> Void)) -> RequestTask {
        return registrationGetConfirmRegistrationBatchWithRequestBuilder(from: from, count: count, batchUploadFilterModelState: batchUploadFilterModelState, batchUploadFilterModelIncludeDeleted: batchUploadFilterModelIncludeDeleted, batchUploadFilterModelFromDate: batchUploadFilterModelFromDate, batchUploadFilterModelToDate: batchUploadFilterModelToDate, batchUploadFilterModelAuthorId: batchUploadFilterModelAuthorId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Загрузки.
     - GET /v1.2/Registration
     - parameter from: (query) From. (optional)
     - parameter count: (query) Count. (optional)
     - parameter batchUploadFilterModelState: (query)  (optional)
     - parameter batchUploadFilterModelIncludeDeleted: (query)  (optional)
     - parameter batchUploadFilterModelFromDate: (query)  (optional)
     - parameter batchUploadFilterModelToDate: (query)  (optional)
     - parameter batchUploadFilterModelAuthorId: (query)  (optional)
     - returns: RequestBuilder<ResultModelOfPagedViewModelOfBatchUploadModel> 
     */
    open class func registrationGetConfirmRegistrationBatchWithRequestBuilder(from: Int? = nil, count: Int? = nil, batchUploadFilterModelState: BatchState? = nil, batchUploadFilterModelIncludeDeleted: Bool? = nil, batchUploadFilterModelFromDate: String? = nil, batchUploadFilterModelToDate: String? = nil, batchUploadFilterModelAuthorId: Int? = nil) -> RequestBuilder<ResultModelOfPagedViewModelOfBatchUploadModel> {
        let localVariablePath = "/v1.2/Registration"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "from": from?.encodeToJSON(),
            "count": count?.encodeToJSON(),
            "batchUploadFilterModel.state": batchUploadFilterModelState?.encodeToJSON(),
            "batchUploadFilterModel.includeDeleted": batchUploadFilterModelIncludeDeleted?.encodeToJSON(),
            "batchUploadFilterModel.fromDate": batchUploadFilterModelFromDate?.encodeToJSON(),
            "batchUploadFilterModel.toDate": batchUploadFilterModelToDate?.encodeToJSON(),
            "batchUploadFilterModel.authorId": batchUploadFilterModelAuthorId?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfPagedViewModelOfBatchUploadModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Запускает регистрацию клиента по номеру карты.
     
     - parameter model: (query) Модель запроса регистрации клиента. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func registrationPostBeginRegistration(model: RegistrationModel, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfRegistrationResult?, _ error: Error?) -> Void)) -> RequestTask {
        return registrationPostBeginRegistrationWithRequestBuilder(model: model).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Запускает регистрацию клиента по номеру карты.
     - POST /v1.2/Registration/BeginRegistration
     - parameter model: (query) Модель запроса регистрации клиента. 
     - returns: RequestBuilder<ResultModelOfRegistrationResult> 
     */
    open class func registrationPostBeginRegistrationWithRequestBuilder(model: RegistrationModel) -> RequestBuilder<ResultModelOfRegistrationResult> {
        let localVariablePath = "/v1.2/Registration/BeginRegistration"
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

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfRegistrationResult>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Завершает процесс регистрации клиента.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func registrationPostTryFinishRegistration(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfFinishRegistrationResultModel?, _ error: Error?) -> Void)) -> RequestTask {
        return registrationPostTryFinishRegistrationWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Завершает процесс регистрации клиента.
     - POST /v1.2/Registration/TryFinishRegistration
     - returns: RequestBuilder<ResultModelOfFinishRegistrationResultModel> 
     */
    open class func registrationPostTryFinishRegistrationWithRequestBuilder() -> RequestBuilder<ResultModelOfFinishRegistrationResultModel> {
        let localVariablePath = "/v1.2/Registration/TryFinishRegistration"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfFinishRegistrationResultModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Запускает анонимную регистрацию клиента.
     
     - parameter model: (query) Данные для анонимной регистрации клиента. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func registrationRegisterAnonymous(model: AnonymousRegistrationModel, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfAnonymousRegistrationResult?, _ error: Error?) -> Void)) -> RequestTask {
        return registrationRegisterAnonymousWithRequestBuilder(model: model).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Запускает анонимную регистрацию клиента.
     - POST /v1.2/Registration/RegisterAnonym
     - parameter model: (query) Данные для анонимной регистрации клиента. 
     - returns: RequestBuilder<ResultModelOfAnonymousRegistrationResult> 
     */
    open class func registrationRegisterAnonymousWithRequestBuilder(model: AnonymousRegistrationModel) -> RequestBuilder<ResultModelOfAnonymousRegistrationResult> {
        let localVariablePath = "/v1.2/Registration/RegisterAnonym"
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

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfAnonymousRegistrationResult>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Завершает процесс регистрации клиента (через КЦ).
     
     - parameter finishRegistrationModel: (query) Внутренний идентификатор клиента. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func registrationTryFinishRegistration(finishRegistrationModel: FinishRegistrationViewModel, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfFinishRegistrationResult?, _ error: Error?) -> Void)) -> RequestTask {
        return registrationTryFinishRegistrationWithRequestBuilder(finishRegistrationModel: finishRegistrationModel).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Завершает процесс регистрации клиента (через КЦ).
     - POST /v1.2/Registration/TryFinishRegistrationCustomer
     - parameter finishRegistrationModel: (query) Внутренний идентификатор клиента. 
     - returns: RequestBuilder<ResultModelOfFinishRegistrationResult> 
     */
    open class func registrationTryFinishRegistrationWithRequestBuilder(finishRegistrationModel: FinishRegistrationViewModel) -> RequestBuilder<ResultModelOfFinishRegistrationResult> {
        let localVariablePath = "/v1.2/Registration/TryFinishRegistrationCustomer"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "finishRegistrationModel": finishRegistrationModel.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfFinishRegistrationResult>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
