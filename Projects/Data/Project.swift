import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.framework(name: Module.data.name, dependencies: [Module.domain.project] + [.moya, .swiftyJson])
