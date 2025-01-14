// swift-tools-version:5.7

import PackageDescription

let SwiftCOM = Package(
  name: "SwiftCOM",
  products: [
    .library(name: "SwiftCOM", type: .dynamic, targets: ["SwiftCOM"]),
  ],
  targets: [
    .target(
      name: "SwiftCOM",
      linkerSettings: [
        .linkedLibrary("Ole32"),
        .linkedLibrary("PortableDeviceGuids"),
      ]
    ),
    .testTarget(
      name: "SwiftCOMTests",
      dependencies: ["SwiftCOM"]
    ),
  ]
)
