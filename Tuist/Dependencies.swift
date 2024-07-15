//
//  Dependencies.swift
//  Config
//
//  Created by cheonsong on 2022/09/05.
//

import ProjectDescription

let dependencies = Dependencies(
  carthage: [],
  swiftPackageManager: [
    .swinject,
  ],
  platforms: [.iOS]
)

extension Package {
  public static let swinject: Package = .package(url: "https://github.com/Swinject/Swinject", from: "2.0.0"),
    public static let rxSwift: Package = .remote(url: "https://github.com/ReactiveX/RxSwift", requirement: .branch("main"))
  public static let rxDataSources: Package = .remote(
    url: "https://github.com/RxSwiftCommunity/RxDataSources",
    requirement: .branch("main")
  )
  public static let alamofire: Package = .remote(url: "https://github.com/Alamofire/Alamofire", requirement: .branch("master"))
  public static let moya: Package = .remote(url: "https://github.com/Moya/Moya", requirement: .branch("master"))
  public static let snapKit: Package = .remote(
    url: "https://github.com/SnapKit/SnapKit",
    requirement: .upToNextMinor(from: "5.0.1")
  )
  public static let then: Package = .remote(url: "https://github.com/devxoul/Then", requirement: .upToNextMajor(from: "2.7.0"))
  public static let kingfisher: Package = .remote(
    url: "https://github.com/onevcat/Kingfisher",
    requirement: .upToNextMajor(from: "5.15.6")
  )
  public static let lottie: Package = .remote(
    url: "https://github.com/airbnb/lottie-ios.git",
    requirement: .upToNextMajor(from: "3.2.1")
  )
  public static let rxKeyboard: Package = .remote(
    url: "https://github.com/RxSwiftCommunity/RxKeyboard",
    requirement: .upToNextMajor(from: "2.0.0")
  )
  public static let rxGesture: Package = .remote(
    url: "https://github.com/RxSwiftCommunity/RxGesture",
    requirement: .upToNextMajor(from: "4.0.4")
  )
  public static let swiftyJson: Package = .remote(
    url: "https://github.com/SwiftyJSON/SwiftyJSON.git",
    requirement: .upToNextMajor(from: "4.0.0")
  )
}
