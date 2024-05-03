// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class GetDealersQuery: GraphQLQuery {
  public static let operationName: String = "GetDealers"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query GetDealers($request: ServiceCenterRequest!) { serviceCenters(request: $request) { __typename ... on ServiceCentersResponse { id temperatureInCelcius lastName firstName travelTime batteries weightInLbs preSoldCount success messages dealers { __typename id name location totalBatteries status profileURL presoldBatteries batteriesCount totalWeightInLbs totalWeightInKgs lastDeliveredDate loadSkipped loadCompleted products { __typename id name shelf bayNumber proposed total } notes { __typename id note } } } } }"#
    ))

  public var request: ServiceCenterRequest

  public init(request: ServiceCenterRequest) {
    self.request = request
  }

  public var __variables: Variables? { ["request": request] }

  public struct Data: AtlasAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { AtlasAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("serviceCenters", ServiceCenters?.self, arguments: ["request": .variable("request")]),
    ] }

    public var serviceCenters: ServiceCenters? { __data["serviceCenters"] }

    /// ServiceCenters
    ///
    /// Parent Type: `ServiceCentersResponse`
    public struct ServiceCenters: AtlasAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { AtlasAPI.Objects.ServiceCentersResponse }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", Int?.self),
        .field("temperatureInCelcius", Int?.self),
        .field("lastName", String?.self),
        .field("firstName", String?.self),
        .field("travelTime", String?.self),
        .field("batteries", Int?.self),
        .field("weightInLbs", Int?.self),
        .field("preSoldCount", Int?.self),
        .field("success", Bool?.self),
        .field("messages", String?.self),
        .field("dealers", [Dealer?]?.self),
      ] }

      public var id: Int? { __data["id"] }
      public var temperatureInCelcius: Int? { __data["temperatureInCelcius"] }
      public var lastName: String? { __data["lastName"] }
      public var firstName: String? { __data["firstName"] }
      public var travelTime: String? { __data["travelTime"] }
      public var batteries: Int? { __data["batteries"] }
      public var weightInLbs: Int? { __data["weightInLbs"] }
      public var preSoldCount: Int? { __data["preSoldCount"] }
      public var success: Bool? { __data["success"] }
      public var messages: String? { __data["messages"] }
      public var dealers: [Dealer?]? { __data["dealers"] }

      /// ServiceCenters.Dealer
      ///
      /// Parent Type: `Dealer`
      public struct Dealer: AtlasAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { AtlasAPI.Objects.Dealer }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", Int?.self),
          .field("name", String?.self),
          .field("location", String?.self),
          .field("totalBatteries", Int?.self),
          .field("status", Bool?.self),
          .field("profileURL", String?.self),
          .field("presoldBatteries", Int?.self),
          .field("batteriesCount", Int?.self),
          .field("totalWeightInLbs", Int?.self),
          .field("totalWeightInKgs", Int?.self),
          .field("lastDeliveredDate", String?.self),
          .field("loadSkipped", Bool?.self),
          .field("loadCompleted", Bool?.self),
          .field("products", [Product?]?.self),
          .field("notes", [Note?]?.self),
        ] }

        public var id: Int? { __data["id"] }
        public var name: String? { __data["name"] }
        public var location: String? { __data["location"] }
        public var totalBatteries: Int? { __data["totalBatteries"] }
        public var status: Bool? { __data["status"] }
        public var profileURL: String? { __data["profileURL"] }
        public var presoldBatteries: Int? { __data["presoldBatteries"] }
        public var batteriesCount: Int? { __data["batteriesCount"] }
        public var totalWeightInLbs: Int? { __data["totalWeightInLbs"] }
        public var totalWeightInKgs: Int? { __data["totalWeightInKgs"] }
        public var lastDeliveredDate: String? { __data["lastDeliveredDate"] }
        public var loadSkipped: Bool? { __data["loadSkipped"] }
        public var loadCompleted: Bool? { __data["loadCompleted"] }
        public var products: [Product?]? { __data["products"] }
        public var notes: [Note?]? { __data["notes"] }

        /// ServiceCenters.Dealer.Product
        ///
        /// Parent Type: `Product`
        public struct Product: AtlasAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { AtlasAPI.Objects.Product }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("id", Int?.self),
            .field("name", String?.self),
            .field("shelf", String?.self),
            .field("bayNumber", String?.self),
            .field("proposed", Int?.self),
            .field("total", Int?.self),
          ] }

          public var id: Int? { __data["id"] }
          public var name: String? { __data["name"] }
          public var shelf: String? { __data["shelf"] }
          public var bayNumber: String? { __data["bayNumber"] }
          public var proposed: Int? { __data["proposed"] }
          public var total: Int? { __data["total"] }
        }

        /// ServiceCenters.Dealer.Note
        ///
        /// Parent Type: `Note`
        public struct Note: AtlasAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { AtlasAPI.Objects.Note }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("id", Int?.self),
            .field("note", String?.self),
          ] }

          public var id: Int? { __data["id"] }
          public var note: String? { __data["note"] }
        }
      }
    }
  }
}
