import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.project(
  name: Module.Domain.rawValue,
  targets: [
    Target.target(
      name: Module.Domain.rawValue,
      product: .staticFramework,
      bundleId: Project.bundleID + ".domain",
      sources: ["Domain/**"],
      dependencies: [
      ]
    ),
    Target.target(
      name: "Data",
      product: .staticFramework,
      bundleId: Project.bundleID + ".data",
      sources: ["Data/**"],
      dependencies: [
        .target(name: "Domain"),
        .external(dependency: .Swinject),
      ]
    ),
  ]
)
