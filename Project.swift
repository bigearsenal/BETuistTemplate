import ProjectDescription // <1>

let projectName = "Bigvalut"
let bundleIdIOS = "com.bigears.kovalut-ru"
let bundleIdMacOS = "com.bigears.kovalut-ru-mac-os"

let project = Project(
    name: projectName,
    targets: [
        Target(
            name: projectName + "_iOS",
            platform: .iOS,
            product: .app,
            bundleId: bundleIdIOS,
            infoPlist: .file(path: .init("iOS/Info.plist")),
            sources: [
                "iOS/Sources/**",
                "shared/Sources/**"
            ],
            resources: [
                "iOS/Resources/**",
                "shared/Resources/**"
            ]
        ),
        Target(
            name: projectName + "_macOS",
            platform: .macOS,
            product: .app,
            bundleId: bundleIdMacOS,
            infoPlist: .file(path: .init("macOS/Info.plist")),
            sources: [
                "macOS/Sources/**",
                "shared/Sources/**"
            ],
            resources: [
                "macOS/Resources/**",
                "shared/Resources/**"
            ]
        )
    ]
)
