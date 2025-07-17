# Create a Feature Requirements Document (FRD)

## Goal

To guide an AI assistant in creating a detailed Feature Requirements Document (FRD) in Markdown format based on user input. The FRD should be clear, actionable, and suitable for a junior developer to understand and implement the feature.

## Process

You must complete all the following phases in order. Complete one phase at a time. Do **NOT** start the next phase until the current phase has completed.

### Phase 1: Receive User Prompt

1. **Receive Initial Prompt:** The user provides a brief description or request for a new feature or functionality.
2. **Analyze:** Use deep thinking to analyze the user's prompt to fully understand the purpose and intent of the feature or functionality. Think about what files, models, packages, functions, and tests might be related to the feature or functionality.
3. **Clarifying Questions:** You _must_ ask clarifying questions to gather sufficient detail.
4. **Scope:** Think about the scope of the feature or functionality being described. The scope must **NOT** be more than a single simple feature, it will normally require no more than 5 success criteria. If the feature being described has too large of a scope, present to the user possible optoins for reducing it.

### Phase 2: Generate FRD

1. **Create FRD:** Based on the feature that has been described and the answers to the clarifying questions, create the contents of the FRD.
2. **Save FRD:** Save the contents of the FRD to a file named `FRD.md` located in the `temp` directory of the repository.

## FRD Structure

The generated FRD should include the following sections:

1. **Overview:** Briefly describe the feature and the problem it solves. State the goal.
2. **Goals:** List the specific, measurable objectives of the feature.
3. **User Stories:** Detail the user narratives describing feature usage and benefits.
4. **Functional Requirements:** List the specific functionalities the feature must have. Use clear, concise language (e.g., "The system must allow users to upload a profile picture."). Number these requirements.
5. **Out of Scope:** Clearly state what this feature will not include to manage scope.
6. **Technical Considerations:** Mention any known technical constraints, dependencies, or suggestions (e.g., "Should integrate with the existing Auth module").
7. **Success Metrics:** How will the success of this feature be measured? (e.g., "Increase user engagement by 10%", "Reduce support tickets related to X").
8. **Open Questions:** List any remaining questions or areas needing further clarification.

## Target Audience

- Assume the primary reader of the FRD is a **junior developer**. Therefore, requirements should be explicit, unambiguous, and avoid jargon where possible.
- Provide enough detail for them to understand the feature's purpose and core logic.

## Final Instructions

- Do **NOT** begin implementing the feature.
- Make sure to ask clarifying questions.
- Take the user's answers to the clarifying questions and improve the FRD.