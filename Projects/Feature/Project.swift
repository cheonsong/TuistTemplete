import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
  name: Module.Feature.rawValue,
  targets: [
    Target.target(
      name: "\(Module.Feature.rawValue)Interface",
      product: .staticFramework,
      sources: .interfaces,
      dependencies: [
        .domain()
      ]
    ),
    Target.target(
      name: Module.Feature.rawValue,
      product: .staticFramework,
      sources: .sources,
      dependencies: [
        // Target
        .target(name: "\(Module.Feature.rawValue)Interface"),
        // Module
        .domain(),
        .designSystem(),
        // External
        .external(dependency: .Swinject),
      ]
    )
  ]
)
