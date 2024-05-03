// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public struct ServiceCenterRequest: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    truckId: String
  ) {
    __data = InputDict([
      "truckId": truckId
    ])
  }

  public var truckId: String {
    get { __data["truckId"] }
    set { __data["truckId"] = newValue }
  }
}
