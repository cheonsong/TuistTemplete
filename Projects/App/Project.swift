import ProjectDescription
import ProjectDescriptionHelpers


// MARK: - Target

let appTarget = Target.target(
  name: "App",
  product: .app,
  bundleId: Project.bundleID + ".app".lowercased(),
  infoPlist: .file(path: .relativeToRoot("Projects/App/Supporting Files/Info.plist")),
  sources: .sources,
  resources: [
    .glob(pattern: .relativeToRoot("Projects/App/Resources/**")),
//    .glob(pattern: .relativeToRoot("Projects/App/App/Supporting Files/GoogleService-Info.plist")),
  ],
//  entitlements: .file(path: .relativeToRoot("Projects/App/Supporting Files/App.entitlements")),
  dependencies: [
    // Module
    .data(),
    .feature(),
    // Core
    // External
    .external(dependency: .Swinject),
  ],
  settings: .settings(
    base: [
      "OTHER_LDFLAGS": "$(inherited) -ObjC",
      "CODE_SIGN_STYLE": "7ZK7Q3JHK4",
      "DEVELOPMENT_TEAM": "7ZK7Q3JHK4"
    ],
    configurations: []
  )
)

// MARK: - Project

let project = Project.project(
  name: "App",
  targets: [
    appTarget,
//    shareExtensionTarget,
  ],
  additionalFiles: [
//    .glob(pattern: .relativeToRoot("Projects/App/Supporting Files/GoogleService-Info.plist")),
  ]
)
