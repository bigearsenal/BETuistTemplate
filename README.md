# BETuistTemplate
A template for creating Xcode project using tuist

## Create project
- Download and install `tuist`
- Edit project using `tuist edit`, remove macOS if needed
- Generate project using `tuist generate`

## How to remove macOS target
- Call `tuist edit`, remove anything related to macOS target and `shared` folder
- Remove folder `macOS` and `shared`
