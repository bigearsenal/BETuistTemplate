import ProjectDescription // <1>

let projectName = "Bigvalut"
let bundleIdMacOS = "com.bigears.kovalut-ru"
let kitName = projectName + "Kit"

let macOSTargets = makeKitFrameworkTargets(platform: .macOS) +
    createAppTarget(platform: .macOS, bundleId: bundleIdMacOS)

let project = Project(
    name: projectName,
    targets: macOSTargets
)

private func createAppTarget(
    platform: Platform,
    bundleId: String
) -> [Target] {
    let name = projectName + "_" + platform.rawValue
    let platformDir = "Apps/" + platform.rawValue
    
    return [
        Target(
            name: name,
            platform: platform,
            product: .app,
            bundleId: bundleId,
            infoPlist: .file(path: .init(platformDir + "/Info.plist")),
            sources: [
                "\(platformDir)/Sources/**"
            ],
            resources: [
                "\(platformDir)/Resources/**"
            ],
            dependencies: [
                .target(name: kitName + "_" + platform.rawValue)
            ]
        ),
        Target(
            name: name + "Tests",
            platform: platform,
            product: .unitTests,
            bundleId: bundleId + "Tests",
            infoPlist: .default,
            sources: [
                "\(platformDir)/Tests/**"
            ],
            dependencies: [
                .target(name: "\(name)")
        ])
    ]
}

/// Helper function to create a framework target and an associated unit test target
private func makeKitFrameworkTargets(platform: Platform) -> [Target] {
    let kitBundleId = bundleIdMacOS + "Kit" + "-" + platform.rawValue
    let name = kitName + "_" + platform.rawValue
    
    let sources = Target(
        name: name,
        platform: platform,
        product: .framework,
        bundleId: kitBundleId,
        infoPlist: .default,
        sources: ["Kit/Sources/**"],
        resources: [],
        dependencies: []
    )
    let tests = Target(
        name: "\(name)Tests",
        platform: platform,
        product: .unitTests,
        bundleId: kitBundleId + "Tests",
        infoPlist: .default,
        sources: ["Kit/Tests/**"],
        resources: [],
        dependencies: [
            .target(name: name)
        ]
    )
    return [sources, tests]
}
