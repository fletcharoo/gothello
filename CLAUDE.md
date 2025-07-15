# CLAUDE.md

This file provides guidance to Claude Code to write high-quality, maintainable, and testable code.

## Common Developer Commands

- `make test`: Run all tests

## Project Context

If you don't feel you have sufficient context regarding the purpose and intent of this project, read the Product Requirements Document (PRD) from `PRD.md` located in the root directory of this repository.

## Technical Architecture

### Files

- `go.mod`: Go modules file
- `PRD.md`: Includes comprehensive PRD documentation

### Models

> This is where documentation for relevant models will go

### Functions

> This is where documentation for relevant functions will go

## Code Style & Conventions

In additiona to using idiomatic Go conventions, be sure that all code aligns with the following style and conventions:

- Before writing any code, be sure to think really hard about the problem you're solving, considering multiple implementations, and use your best judgement to choose the best implementation
- Where possible use already established patterns
- All names should be descriptive
- Follow early return principles
- All functions must assert their input and gracefully handle invalid inputs (e.g., check strings aren't empty, check pointers aren't nil)
- All functions must have named return parameters (e.g., `(err error)`)
- All code should be documented with comments that align with godoc standards
- Code should have 100% test coverage
- Test assertions should be done with the `testify/stretchr/assert` package
- Test requireents should be done with the `testify/stretchr/require` package
- Tests should make use of table testing aligning with the template described below
- All code should align with single responsibility principle
- All code should align with separate of concerns

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