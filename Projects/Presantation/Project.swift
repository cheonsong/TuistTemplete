import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.framework(name: Module.presantation.name, dependencies: [Module.domain.project] + [.snapKit, .then])
