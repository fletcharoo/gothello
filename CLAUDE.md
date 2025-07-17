# CLAUDE.md

This file provides guidance to Claude Code to write high-quality, maintainable, and testable code.

## Common Developer Commands

- `make test`: Run all tests

## Project Context

- Before beginning any task, you _must_ read the Product Requirements Document (PRD) from `PRD.md` located in the root directory of this repository
- Ensure all changes you make align with the goals and technical requirements of the PRD

## Technical Architecture

### Files

- `go.mod`: Go modules file
- `PRD.md`: Includes comprehensive PRD documentation

### Models

> This is where documentation for relevant models will go

### Functions

> This is where documentation for relevant functions will go

## Code Style & Conventions

In addition to using idiomatic Go conventions, be sure that all code aligns with the following style and conventions:

- Before writing any code, be sure to think really hard about the problem you're solving, considering multiple implementations, and use your best judgment to choose the best implementation
- Where possible use already established patterns
- All names should be descriptive
- Follow early return principles
- All functions must assert their input and gracefully handle invalid inputs (e.g., check strings aren't empty, check pointers aren't nil)
- All functions must have named return parameters (e.g., `(err error)`)
- All code should be documented with comments that align with godoc standards
- Code should have 100% test coverage
- Test assertions should be done with the `testify/stretchr/assert` package
- Test requirements should be done with the `testify/stretchr/require` package
- Tests should make use of table testing aligning with the template described below
- All code should align with single responsibility principle
- All code should align with separation of concerns

## Examples

### Table Test Template

```go
func Test_[Insert Test Name](t *testing.T) {
    testCases := map[string]struct{
        // inputs and expectations
    }{
        // test cases
    }

    for name, tc := range testCases {
        t.Run(name, func(t *testing.T) {
            // run the test and assert expectations
        })
    }
}
```

### Example Clarifying Questions

The AI should adapt its questions based on the task and requirements, but here are some common areas to explore:

*   **Problem/Goal:** "What problem does this feature solve for the user?" or "What is the main goal we want to achieve with this feature?"
*   **Target User:** "Who is the primary user of this feature?"
*   **Core Functionality:** "Can you describe the key actions a user should be able to perform with this feature?"
*   **User Stories:** "Could you provide a few user stories? (e.g., As a [type of user], I want to [perform an action] so that [benefit].)"
*   **Acceptance Criteria:** "How will we know when this feature is successfully implemented? What are the key success criteria?"
*   **Scope/Boundaries:** "Are there any specific things this feature *should not* do (non-goals)?"
*   **Data Requirements:** "What kind of data does this feature need to display or manipulate?"
*   **Design/UI:** "Are there any existing design mockups or UI guidelines to follow?" or "Can you describe the desired look and feel?"
*   **Edge Cases:** "Are there any potential edge cases or error conditions we should consider?"

## Update Technical Architecture

After every change you make in the repository, you _must_ update the `Technical Architecture` section of the `CLAUDE.md` file located in the root directory of the repository.

## Clarifying Questions

When you ask the user clarifying questions, you _must_ follow the following rules:

- The goal is to understand the "what" and "why" of the feature, not necessarily the "how" (which the developer will figure out). Make sure to provide options in number lists so I can respond easily with my selections
- Only ask **one** clarifying question at a time
- Use the responses from clarifying questions to improve all tasks you perform