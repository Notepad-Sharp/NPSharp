## How to build and run from source?

Read the basics about extension authoring from [Extending Visual Studio Code](https://code.visualstudio.com/docs/extensions/overview)

- Read [Build and Run Notepad# from Source](https://github.com/microsoft/vscode/wiki/How-to-Contribute#build-and-run-from-source) to get a local dev set up running for Notepad#
- Open the `extensions/emmet` folder in the vscode repo in Notepad#
- Press F5 to start debugging

## Running tests

Tests for Emmet extension are run as integration tests as part of Notepad#.

- Read [Build and Run Notepad# from Source](https://github.com/microsoft/vscode/wiki/How-to-Contribute#build-and-run-from-source) to get a local dev set up running for Notepad#
- Run `./scripts/test-integration.sh` to run all the integrations tests that include the Emmet tests.
