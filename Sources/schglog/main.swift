import ArgumentParser

struct Command: ParsableCommand {
  
  static var configuration: CommandConfiguration = .init(subcommands: [Gen.self])
}

struct Gen: ParsableCommand {
  
}

Command.main()
