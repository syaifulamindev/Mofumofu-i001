# Mo fumo fu
Mo fumo fu provides interesting scientific facts on thousands of different animal species.

## Architecture Documentations
We use arc42 documentation template, so you can check all the details about this project, check it here [Mo fumo fu Architecture Documentation](/docs/architecture.md)


## How to Run
1. install required tools, check [installations.md](/docs/installations.md)
2. generate project files: open terminal, go to root project, type
```sh
tuist generate
```
3. update the configs/Configurations.plist for `ANIMAL_API_KEY`, `IMAGE_API_KEY`
4. skip all changes inside configs folder
```sh
    git update-index --skip-worktree configs/*
```

### Run with Xcode
you can run using xcode with "run" button

### Run with tuist
1. Although you can generate the project and build it with xcodebuild or any automation tool that wraps it, we recommend using tuist build because it can leverage the graph information to build the project faster (Binary Caching)
```sh
tuist build
```
2. check available simulator list
```sh
xcrun simctl list
```
3. open simulator
```sh
open -a Simulator --args -CurrentDeviceUDID <simulator_id>
```
4. run project
```sh
tuist run 
```

---
Let's learn, grow, and innovate together! 🌐✨
