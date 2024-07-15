import ProjectDescription
import ProjectDescriptionHelpers

let workspace = Workspace(
  name: "App",
  projects: Module.allCases.map {
    .relativeToRoot("Projects/\($0.rawValue)")
  } + CoreModule.allCases.map {
    .relativeToRoot("Projects/Core/\($0.rawValue)")
  }
)
