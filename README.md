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
3. update the Configurations.plist for `ANIMAL_API_KEY`, `IMAGE_API_KEY`
4. Although you can generate the project and build it with xcodebuild or any automation tool that wraps it, we recommend using tuist build because it can leverage the graph information to build the project faster (Binary Caching)
```sh
tuist build
```
5. run project
```sh
tuist run
```

---
Let's learn, grow, and innovate together! 🌐✨
