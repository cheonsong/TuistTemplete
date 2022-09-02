import ProjectDescription
import ProjectDescriptionHelpers

let workspace = Workspace(name: "Projects",
                          projects: Module.allCases.map(\.path))
