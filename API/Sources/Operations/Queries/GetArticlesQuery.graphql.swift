// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class GetArticlesQuery: GraphQLQuery {
  public static let operationName: String = "GetArticles"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query GetArticles { articles { __typename author title content publishedAt urlToImage url } }"#
    ))

  public init() {}

  public struct Data: API.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { API.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("articles", [Article?]?.self),
    ] }

    public var articles: [Article?]? { __data["articles"] }

    /// Article
    ///
    /// Parent Type: `Article`
    public struct Article: API.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { API.Objects.Article }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("author", String?.self),
        .field("title", String?.self),
        .field("content", String?.self),
        .field("publishedAt", String?.self),
        .field("urlToImage", String?.self),
        .field("url", String?.self),
      ] }

      public var author: String? { __data["author"] }
      public var title: String? { __data["title"] }
      public var content: String? { __data["content"] }
      public var publishedAt: String? { __data["publishedAt"] }
      public var urlToImage: String? { __data["urlToImage"] }
      public var url: String? { __data["url"] }
    }
  }
}
