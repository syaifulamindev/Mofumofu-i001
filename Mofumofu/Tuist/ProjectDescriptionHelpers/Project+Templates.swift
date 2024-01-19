import ProjectDescription

/// Project helpers are functions that simplify the way you define your project.
/// Share code to create targets, settings, dependencies,
/// Create your own conventions, e.g: a func that makes sure all shared targets are "static frameworks"
/// See https://docs.tuist.io/guides/helpers/
public class ProjectBuilder {
    private let name: String
    private var targets: [Target] = []
    private let DESTINATIONS: Destinations = .iOS
    public init(_ name: String) {
        self.name = name
    }
    
    public func build() -> Project {
        let infoPlist: [String: Plist.Value] = [
            "CFBundleShortVersionString": "1.0",
            "CFBundleVersion": "1",
            "UILaunchStoryboardName": "LaunchScreen"
            ]

        let mainTarget = Target(
            name: name,
            destinations: DESTINATIONS,
            product: .app,
            bundleId: "id.amin.\(name)",
            infoPlist: .extendingDefault(with: infoPlist),
            sources: ["Targets/\(name)/Sources/**"],
            resources: ["Targets/\(name)/Resources/**"],
            dependencies: []
        )

        let testTarget = Target(
            name: "\(name)Tests",
            destinations: DESTINATIONS,
            product: .unitTests,
            bundleId: "id.amin.\(name)Tests",
            infoPlist: .default,
            sources: ["Targets/\(name)/Tests/**"],
            dependencies: [
                .target(name: "\(name)")
        ])
        
        var targets = [mainTarget, testTarget]
        targets.append(contentsOf: self.targets)
        return Project(name: name,
                       organizationName: "amin.id",
                       targets: targets)
    }
    
}

public extension ProjectBuilder {
    
    func addModule(_ name: String, dependencies: [TargetDependency] = [], resources: ResourceFileElements = []) -> ProjectBuilder {
        let sources = Target(name: name,
                             destinations: DESTINATIONS,
                product: .framework,
                             bundleId: "id.amin.\(name)",
                infoPlist: .default,
                             sources: ["Targets/\(name)/Sources/**"],
                             resources: resources,
                             dependencies: dependencies)
        var testDependencies = dependencies
        testDependencies.append(.target(name: name))
        let tests = Target(name: "\(name)Tests",
                           destinations: DESTINATIONS,
                product: .unitTests,
                           bundleId: "id.amin.\(name)Tests",
                infoPlist: .default,
                           sources: ["Targets/\(name)/Tests/**"],
                           resources: resources,
                           dependencies: testDependencies)
        targets.append(contentsOf: [sources, tests])
        return self
    }
}
