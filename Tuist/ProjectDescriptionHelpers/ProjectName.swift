//
//  ProjectName.swift
//  ProjectDescriptionHelpers
//
//  Created by cheonsong on 2022/09/02.
//

import ProjectDescription

public enum Module: String {
  case App
  case Feature
  case Domain
  case DesignSystem
  case Core
}

extension Module: CaseIterable {}


public enum CoreModule: String, CaseIterable {
  case CoreTest
}
