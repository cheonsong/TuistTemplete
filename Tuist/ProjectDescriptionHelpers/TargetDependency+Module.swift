//
//  TargetDependency+Module.swift
//  ProjectDescriptionHelpers
//
//  Created by 박천송 on 7/15/24.
//

import ProjectDescription

// MARK: Presentation

extension TargetDependency {
  public static func feature()-> TargetDependency {
    .project(target: "Feature", path: .relativeToRoot("Projects/Feature"))
  }
}

// MARK: DesignSystem

extension TargetDependency {
  public static func designSystem()-> TargetDependency {
    .project(target: "DesignSystem", path: .relativeToRoot("Projects/DesignSystem"))
  }
}


// MARK: Domain

extension TargetDependency {
  public static func domain()-> TargetDependency {
    .project(target: "Domain", path: .relativeToRoot("Projects/Domain"))
  }

  public static func data()-> TargetDependency {
    .project(target: "Data", path: .relativeToRoot("Projects/Domain"))
  }
}

// MARK: Core

extension TargetDependency {
  public static func core(impl module: CoreModule)-> TargetDependency {
    .project(target: module.rawValue, path: .relativeToRoot("Projects/Core/" + module.rawValue))
  }

  public static func core(interface module: CoreModule)-> TargetDependency {
    .project(target: module.rawValue + "Interface", path: .relativeToRoot("Projects/Core/" + module.rawValue))
  }
}


