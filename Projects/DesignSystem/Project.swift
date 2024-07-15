import ProjectDescription
import ProjectDescriptionHelpers

let protject = Project.project(
  name: Module.DesignSystem.rawValue,
  targets: [
    Target.target(
      name: Module.DesignSystem.rawValue,
      product: .staticFramework,
      sources: .sources,
      resources: .default,
      dependencies: [
      ]
    )
  ]
)
