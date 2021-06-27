# BETuistTemplate
A template for creating Xcode project using tuist

## Create project
- Download and install `tuist`
- There are 2 branches for choosing if you are developing for just `ios` or `macos` platform, they are `macos_only` and `ios_only`. If you are developing universal app for both `ios` and `macos`, use branch `master`
- After choosing branch and download, navigate to folder and run `tuist generate`

## Project structure
- Apps: contain App code base for `iOS` and `macOS`, `shared` folder for reusing in 2 platforms.
- Kit: the common kit for developing the app
- UIKit: UIKit specific code (missing in `macos_only` branch)
