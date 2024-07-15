import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
  name: Module.Core.rawValue,
  targets: [
    Target.target(
      name: "\(Module.Core.rawValue)Interface",
      product: .staticFramework,
      sources: .interfaces,
      dependencies: [
        .domain()
      ]
    ),
    Target.target(
      name: Module.Core.rawValue,
      product: .staticFramework,
      sources: .sources,
      dependencies: [
        // External
        .external(dependency: .Swinject),
      ]
    )
  ]
)
