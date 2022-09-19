import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.framework(name: Module.data.name, dependencies: [.moya, .swiftyJson])
