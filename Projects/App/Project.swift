import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.app(name: "App", dependencies: [
    Module.domain,
    Module.data,
    Module.presantation,
    Module.designSystem
].map(\.project))
