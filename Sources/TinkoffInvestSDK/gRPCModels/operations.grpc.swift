//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: operations.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import GRPC
import NIO
import SwiftProtobuf


///Сервис предназначен для получения:</br> **1**.  списка операций по счёту;</br> **2**.
///портфеля по счёту;</br> **3**. позиций ценных бумаг на счёте;</br> **4**.
///доступного остатка для вывода средств.
///
/// Usage: instantiate `OperationsServiceClient`, then call methods of this protocol to make API calls.
public protocol OperationsServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: OperationsServiceClientInterceptorFactoryProtocol? { get }

  func getOperations(
    _ request: OperationsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<OperationsRequest, OperationsResponse>

  func getPortfolio(
    _ request: PortfolioRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<PortfolioRequest, PortfolioResponse>

  func getPositions(
    _ request: PositionsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<PositionsRequest, PositionsResponse>

  func getWithdrawLimits(
    _ request: WithdrawLimitsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<WithdrawLimitsRequest, WithdrawLimitsResponse>

  func getBrokerReport(
    _ request: BrokerReportRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<BrokerReportRequest, BrokerReportResponse>
}

extension OperationsServiceClientProtocol {
  public var serviceName: String {
    return "tinkoff.public.invest.api.contract.v1.OperationsService"
  }

  ///Метод получения списка операций по счёту.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetOperations.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getOperations(
    _ request: OperationsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<OperationsRequest, OperationsResponse> {
    return self.makeUnaryCall(
      path: "/tinkoff.public.invest.api.contract.v1.OperationsService/GetOperations",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetOperationsInterceptors() ?? []
    )
  }

  ///Метод получения портфеля по счёту.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetPortfolio.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getPortfolio(
    _ request: PortfolioRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<PortfolioRequest, PortfolioResponse> {
    return self.makeUnaryCall(
      path: "/tinkoff.public.invest.api.contract.v1.OperationsService/GetPortfolio",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetPortfolioInterceptors() ?? []
    )
  }

  ///Метод получения списка позиций по счёту.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetPositions.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getPositions(
    _ request: PositionsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<PositionsRequest, PositionsResponse> {
    return self.makeUnaryCall(
      path: "/tinkoff.public.invest.api.contract.v1.OperationsService/GetPositions",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetPositionsInterceptors() ?? []
    )
  }

  ///Метод получения доступного остатка для вывода средств.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetWithdrawLimits.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getWithdrawLimits(
    _ request: WithdrawLimitsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<WithdrawLimitsRequest, WithdrawLimitsResponse> {
    return self.makeUnaryCall(
      path: "/tinkoff.public.invest.api.contract.v1.OperationsService/GetWithdrawLimits",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetWithdrawLimitsInterceptors() ?? []
    )
  }

  /// Unary call to GetBrokerReport
  ///
  /// - Parameters:
  ///   - request: Request to send to GetBrokerReport.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getBrokerReport(
    _ request: BrokerReportRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<BrokerReportRequest, BrokerReportResponse> {
    return self.makeUnaryCall(
      path: "/tinkoff.public.invest.api.contract.v1.OperationsService/GetBrokerReport",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeGetBrokerReportInterceptors() ?? []
    )
  }
}

public protocol OperationsServiceClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'getOperations'.
  func makeGetOperationsInterceptors() -> [ClientInterceptor<OperationsRequest, OperationsResponse>]

  /// - Returns: Interceptors to use when invoking 'getPortfolio'.
  func makeGetPortfolioInterceptors() -> [ClientInterceptor<PortfolioRequest, PortfolioResponse>]

  /// - Returns: Interceptors to use when invoking 'getPositions'.
  func makeGetPositionsInterceptors() -> [ClientInterceptor<PositionsRequest, PositionsResponse>]

  /// - Returns: Interceptors to use when invoking 'getWithdrawLimits'.
  func makeGetWithdrawLimitsInterceptors() -> [ClientInterceptor<WithdrawLimitsRequest, WithdrawLimitsResponse>]

  /// - Returns: Interceptors to use when invoking 'getBrokerReport'.
  func makeGetBrokerReportInterceptors() -> [ClientInterceptor<BrokerReportRequest, BrokerReportResponse>]
}

public final class OperationsServiceClient: OperationsServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions
  public var interceptors: OperationsServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the tinkoff.public.invest.api.contract.v1.OperationsService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  public init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: OperationsServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

///Сервис предназначен для получения:</br> **1**.  списка операций по счёту;</br> **2**.
///портфеля по счёту;</br> **3**. позиций ценных бумаг на счёте;</br> **4**.
///доступного остатка для вывода средств.
///
/// To build a server, implement a class that conforms to this protocol.
public protocol OperationsServiceProvider: CallHandlerProvider {
  var interceptors: OperationsServiceServerInterceptorFactoryProtocol? { get }

  ///Метод получения списка операций по счёту.
  func getOperations(request: OperationsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<OperationsResponse>

  ///Метод получения портфеля по счёту.
  func getPortfolio(request: PortfolioRequest, context: StatusOnlyCallContext) -> EventLoopFuture<PortfolioResponse>

  ///Метод получения списка позиций по счёту.
  func getPositions(request: PositionsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<PositionsResponse>

  ///Метод получения доступного остатка для вывода средств.
  func getWithdrawLimits(request: WithdrawLimitsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<WithdrawLimitsResponse>

  func getBrokerReport(request: BrokerReportRequest, context: StatusOnlyCallContext) -> EventLoopFuture<BrokerReportResponse>
}

extension OperationsServiceProvider {
  public var serviceName: Substring { return "tinkoff.public.invest.api.contract.v1.OperationsService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "GetOperations":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<OperationsRequest>(),
        responseSerializer: ProtobufSerializer<OperationsResponse>(),
        interceptors: self.interceptors?.makeGetOperationsInterceptors() ?? [],
        userFunction: self.getOperations(request:context:)
      )

    case "GetPortfolio":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<PortfolioRequest>(),
        responseSerializer: ProtobufSerializer<PortfolioResponse>(),
        interceptors: self.interceptors?.makeGetPortfolioInterceptors() ?? [],
        userFunction: self.getPortfolio(request:context:)
      )

    case "GetPositions":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<PositionsRequest>(),
        responseSerializer: ProtobufSerializer<PositionsResponse>(),
        interceptors: self.interceptors?.makeGetPositionsInterceptors() ?? [],
        userFunction: self.getPositions(request:context:)
      )

    case "GetWithdrawLimits":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<WithdrawLimitsRequest>(),
        responseSerializer: ProtobufSerializer<WithdrawLimitsResponse>(),
        interceptors: self.interceptors?.makeGetWithdrawLimitsInterceptors() ?? [],
        userFunction: self.getWithdrawLimits(request:context:)
      )

    case "GetBrokerReport":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<BrokerReportRequest>(),
        responseSerializer: ProtobufSerializer<BrokerReportResponse>(),
        interceptors: self.interceptors?.makeGetBrokerReportInterceptors() ?? [],
        userFunction: self.getBrokerReport(request:context:)
      )

    default:
      return nil
    }
  }
}

public protocol OperationsServiceServerInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when handling 'getOperations'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeGetOperationsInterceptors() -> [ServerInterceptor<OperationsRequest, OperationsResponse>]

  /// - Returns: Interceptors to use when handling 'getPortfolio'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeGetPortfolioInterceptors() -> [ServerInterceptor<PortfolioRequest, PortfolioResponse>]

  /// - Returns: Interceptors to use when handling 'getPositions'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeGetPositionsInterceptors() -> [ServerInterceptor<PositionsRequest, PositionsResponse>]

  /// - Returns: Interceptors to use when handling 'getWithdrawLimits'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeGetWithdrawLimitsInterceptors() -> [ServerInterceptor<WithdrawLimitsRequest, WithdrawLimitsResponse>]

  /// - Returns: Interceptors to use when handling 'getBrokerReport'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeGetBrokerReportInterceptors() -> [ServerInterceptor<BrokerReportRequest, BrokerReportResponse>]
}
