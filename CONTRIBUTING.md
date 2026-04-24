# Contributing to FreeFlowCharts API

Thank you for your interest in contributing to the FreeFlowCharts API ecosystem!

Since this is the companion repository for a live production API, contributions here are generally focused on:

1. **Documentation Improvements:** Fixing typos, expanding explanations, or translating docs.
2. **SDKs and Examples:** Adding new code snippets in languages we haven't covered yet (e.g., Go, Rust, Ruby, C#), or improving existing examples.
3. **Bug Reports & Feature Requests:** Informing us of issues with the live API or requesting new features.

## Reporting Bugs

We use GitHub Issues to track public bugs. If you encounter an issue with the live API (e.g., unexpected 500s, layout rendering bugs, unexpected rate limit behavior), please:

1. Check the existing issues to see if it has already been reported.
2. Use the provided **Bug Report** issue template.
3. Include the specific JSON payload that caused the issue, or the URL of the broken flowchart (since charts contain no sensitive info by default).

## Suggesting Enhancements

If you have an idea for a new feature (e.g., a new Node Type, a new Theme, or a new export format):

1. Check the existing issues to see if it's already requested.
2. Use the provided **Feature Request** issue template.
3. Explain *why* this feature would be useful for your specific use-case or AI agent.

## Pull Requests

If you are contributing code (like a new script in the `examples/` directory):

1. Fork the repo and create your branch from `master`.
2. If you've added code that should be tested, add or run local tests.
3. Ensure the code is clear and well-commented.
4. Open a Pull Request referencing any related issues.

### Adding New Examples

If you want to add a code example for a new language:
- Place it in the `examples/` directory.
- Name it clearly (e.g., `create-flowchart.go`, `create-flowchart.rb`).
- Ensure the script is self-contained. It should demonstrate hitting the `POST /api/create-flowchart` endpoint, printing the URL, and ideally fetching one of the export formats (like PNG or SVG).
- Keep external dependencies to a minimum if possible, or clearly document them in a comment at the top of the file.

## License

By contributing to this repository, you agree that your contributions will be licensed under its MIT License.
