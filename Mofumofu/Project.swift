import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

/*
                +-------------+
                |             |
                |     App     | Contains Mofumofu App target and Mofumofu unit-test target
                |             |
         +------+-------------+-------+
         |         depends on         |
         |                            |
 +----v-----+                   +-----v-----+
 |          |                   |           |
 |   Kit    |                   |     UI    |   Two independent frameworks to share code and start modularising your app
 |          |                   |           |
 +----------+                   +-----------+

 */

// MARK: - Project

// Local plugin loaded
let localHelper = LocalHelper(name: "MyPlugin")

// Creates our project using a helper function defined in ProjectDescriptionHelpers

let project = ProjectBuilder("Mofumofu")
    .addModule("MofumofuKit", dependencies: [
        .external(name: "Alamofire"),
        .external(name: "Moya")
    ])
    .addModule("MofumofuUI", dependencies: [
        .external(name: "SnapKit")
    ])
    .addModule("AnimalFeature", path: "Features/Animal", withExample: true, dependencies: [
        .target(name: "MofumofuUI")
    ], resources: ["Targets/Features/Animal/Resources/**"])
    .build()
