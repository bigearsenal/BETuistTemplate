import ProjectDescription // <1>

let project = Project(
    name: "Bigvalut",
    targets: [
        Target(
            name: "Bigvalut_iOS",
            platform: .iOS,
            product: .app,
            bundleId: "com.bigears.kovalut-ru",
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
            name: "Bigvalut_macOS",
            platform: .macOS,
            product: .app,
            bundleId: "com.bigears.kovalut-ru-mac-os",
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
