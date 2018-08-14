import Vapor
import HTTP


public final class GameSystem {
public var id : String
public var name : String
public var details : String
public var edition : String

public init(id : String, name : String, details : String = "", edition : String = "1") {
    self.id = id
    self.name = name
    self.details = details
    self.edition = edition
}
}

// extension GameSystem : Content {


// }
