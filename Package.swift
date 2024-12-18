// swift-tools-version: 6.0

import PackageDescription

let package = Package(
	name: "OpenAI",
	platforms: [
		.iOS(.v17)
	],
	products: [
		.library(name: "OpenAI", type: .static, targets: ["OpenAI"]),
	],
	dependencies: [
		.package(url: "https://github.com/stasel/WebRTC.git", branch: "latest"),
	],
	targets: [
		.target(name: "OpenAI", dependencies: ["WebRTC"], path: "./src"),
	]
)
