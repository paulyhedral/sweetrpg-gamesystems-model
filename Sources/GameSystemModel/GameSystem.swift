import Vapor
import FluentPostgreSQL
import HTTP


public final class GameSystem : PostgreSQLModel {
    public var id : Int?
public var identifier : String
public var name : String
public var details : String
public var edition : String

public init(identifier : String, name : String, details : String = "", edition : String = "1") {
    self.identifier = identifier
    self.name = name
    self.details = details
    self.edition = edition
}
}
