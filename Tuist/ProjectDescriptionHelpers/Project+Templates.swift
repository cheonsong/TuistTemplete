import ProjectDescription

/// Project helpers are functions that simplify the way you define your project.
/// Share code to create targets, settings, dependencies,
/// Create your own conventions, e.g: a func that makes sure all shared targets are "static frameworks"
/// See https://docs.tuist.io/guides/helpers/

extension Project {
    
    static let bundleID = "com.cheonsong"
    static let iosVersion = "13.0"
    
    /// Helper function to create the Project for this ExampleApp
    public static func app(
        name: String,
        dependencies: [TargetDependency] = [],
        resources: ProjectDescription.ResourceFileElements? = nil
    ) -> Project {
        return self.project(
            name: name,
            product: .app,
            bundleID: bundleID + "\(name)",
            dependencies: dependencies,
            resources: resources
        )
    }
}

extension Project {
    public static func framework(name: String,
                                 dependencies: [TargetDependency] = [],
                                 resources: ProjectDescription.ResourceFileElements? = nil
    ) -> Project {
        return .project(name: name,
                        product: .framework,
                        bundleID: bundleID + ".\(name)",
                        dependencies: dependencies,
                        resources: resources)
    }
    
    
    
    public static func project(
        name: String,
        product: Product,
        bundleID: String,
        schemes: [Scheme] = [],
        dependencies: [TargetDependency] = [],
        resources: ProjectDescription.ResourceFileElements? = nil
    ) -> Project {
        return Project(
            name: name,
            targets: [
                Target(
                    name: name,
                    platform: .iOS,
                    product: product,
                    bundleId: bundleID,
                    deploymentTarget: .iOS(targetVersion: iosVersion, devices: [.iphone, .ipad]),
                    infoPlist: .file(path: .relativeToRoot("Supporting Files/Info.plist")),
                    sources: ["Sources/**"],
                    resources: resources,
                    dependencies: dependencies
                ),
                Target(
                    name: "\(name)Tests",
                    platform: .iOS,
                    product: .unitTests,
                    bundleId: bundleID,
                    deploymentTarget: .iOS(targetVersion: iosVersion, devices: [.iphone, .ipad]),
                    infoPlist: .file(path: .relativeToRoot("Supporting Files/Info.plist")),
                    sources: "Tests/**",
                    dependencies: [
                        .target(name: "\(name)")
                    ]
                )
            ],
            schemes: schemes
        )
    }
}

public extension TargetDependency {
    static let rxSwift: TargetDependency         = .external(name: "RxSwift")
    static let rxCocoa: TargetDependency         = .external(name: "RxCocoa")
    static let rxRelay: TargetDependency         = .external(name: "RxRelay")
    static let rxDataSources: TargetDependency   = .external(name: "RxDataSources")
    static let alamofire: TargetDependency       = .external(name: "Alamofire")
    static let moya: TargetDependency            = .external(name: "Moya")
    static let rxMoya: TargetDependency          = .external(name: "RxMoya")
    static let snapKit: TargetDependency         = .external(name: "SnapKit")
    static let then: TargetDependency            = .external(name: "Then")
    static let kingfisher: TargetDependency      = .external(name: "Kingfisher")
    static let rxKeyboard: TargetDependency      = .external(name: "RxKeyboard")
    static let lottie: TargetDependency          = .external(name: "Lottie")
    static let rxGesture: TargetDependency       = .external(name: "RxGesture")
    static let swiftyJson: TargetDependency      = .external(name: "SwiftyJSON")
}
