// swift-tools-version:5.7

import PackageDescription

let SwiftCOM = Package(
  name: "SwiftCOM",
  platforms: [
    .custom("windows", versionString: "10")
  ],
  products: [
    .library(name: "SwiftCOM", targets: ["SwiftCOM"]),
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
