import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.framework(name: Module.presentation.name,
                                dependencies: [Module.domain.project] + [.snapKit, .then],
                                resources: .default)
