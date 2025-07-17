# Conduct a Comprehensive Code Review

## Goal

To guide an AI assistant in performing a complete code and documentation review of the repository. The goal is to identify any potential bugs, security vulnerabilities, poor coding practices, and outdated documentation, and to verify that all tests pass. The output should be a clearly written report appropriate for a developer or engineering team to act upon.

## Process

You _must_ complete all the following phases in order. Complete one phase at a time. Do **NOT** start the next phase until the current phase has completed.

### Phase 1: Run Tests

Run all the tests in the repository. If any tests fail, immediately alert the user and exit the prompt. There's no point continuing with a code review if tests are failing.

### Phase 2: Understand Feature

Read the Feature Requirements Document (FRD) from the contents of `FRD.md` located in the `temp` directory of the repository. Use deep thinking to fully understand the purpose and intent of the FRD.

Read the Product Requirements Document (PRD) from the contents of `PRD.md` located in the root directory of the repository. Use deep thinking to fully understand the purpose and intent of the PRD.

Analyze the uncommitted changes on the branch. Use deep thinking to fully understand the purpose and intent of the changes.

### Phase 3: FRD Alignment

Analyze the uncommitted changes made on the branch and use your best judgement on whether you think the changes made fulfill all the goals and success criteria of the feature described in the FRD. Add your findings to the report.

### Phase 4: PRD Alignment

Analyze the uncommitted changes made on the branch and use your best judgement on whether you think the changes made align with the goals and technical requirements described in the PRD. Add your findings to the report.

### Phase 5: Test Review

Analyze all of the tests in this repository and use your best judgement on whether you think the tests adequately test all functionality, including possible bugs and edge cases. Add your findings to the report.

### Phase 6: Code Coverage

Run all tests with coverage. If the coverage is below 100%, add this finding to the report.

### Phase 7: Code Quality Review

Assess naming conventions, code organization, and adherence to established code style & conventions. Look for code duplication, complex functions, and lack of modularity. Identify areas that would benefit from refactoring or improved readability. Add your findings to the report.

### Phase 8: Static Analysis

Check for bugs, bad coding style, and potential logic errors. Identify dead code or unused variables/functions. Add your findings to the report.

### Phase 9: Security Analysis

Identify hardcoded secrets, insecure coding patterns, or outdated dependencies. If the code uses external services or APIs, ensure proper handling of secrets and credentials. Add your findings to the report.

### Phase 10: Markdown Documentation Review

Analyze all markdown files in this repository for documentation that is outdated with the current implementation. Add your findings to the review.

### Phase 11: Inline Comments Review

Analyze all inline code comments in this repository for documentation that is outdated with the current implementation. Add your findings to the review.

### Phase 12: Generate Report

Using all your findings from above, generate the report using the template described below and save it to a file named `REPORT.md` in the `temp` directory of this repository.

## Classifying Findings

As you add findings to the report, classify them as one of the following risk categories:

1. **Critical:** Severe issues requiring immediate action. These pose significant threats to system security, functionality, or data integrity. Examples include SQL injection vulnerabilities, authentication bypasses, or critical business logic flaws.
2. **High:** Serious issues that should be addressed promptly. While not immediately exploitable, they represent substantial risks. Examples include weak encryption, insufficient access controls, or sensitive data exposure.
3. **Medium:** Moderate issues that should be remediated in normal development cycles. These present real risks but with limited impact or exploitability. Examples include missing security headers, verbose error messages, or outdated dependencies.
4. **Low:** Minor issues representing minimal risk. These should be fixed when convenient but don't pose immediate threats. Examples include missing best practices, minor information disclosure, or code quality issues.
5. **Observation:** Informational findings that don't represent direct vulnerabilities but are worth noting. These might include recommendations for improvement, architectural suggestions, or positive security implementations worth highlighting.

## Report Template

Generate a report with the following sections:

1. **Overview:** Briefly describe the findings in the report.
2. **Critical:** Compile all critical risk findings into a numbered list.
3. **High:** Compile all high risk findings into a numbered list.
4. **Medium:** Compile all medium risk findings into a numbered list.
5. **Low:** Compile all low risk findings into a numbered list.
6. **Observation:** Compile all observation risk findings into a numbered list

## Final Instructions

- Do **NOT** begin implementing fixes for the findings.