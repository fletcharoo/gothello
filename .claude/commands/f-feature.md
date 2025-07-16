# Create a Feature Requirements Document (FRD)

## Goal

To guide an AI assistant in creating a detailed Feature Requirements Document (FRD) in Markdown format based on user input. The FRD should be clear, actionable, and suitable for a junior developer to understand and implement the feature.

## Process

Make sure to complete all the following phases in order. Complete one phase at a time. Do not start the next phase until the current phase has completed.

### Phase 1: Receive Initial Prompt

- **What:** Prompt the user with "What?" and wait for the user to provide a brief description of what the requirements for the feature are.
- **Why:** Prompt the user with "Why?" and wait for the user to provide a brief description of what the requirements for the feature are.
- **Considerations:** Prompt the user with "Considerations" and wait for the user to provide any additional considerations for completing the feature.
- Only prompt the user one at a time.

### Phase 2: Analyze and Clarify

- **Deep Thinking:** Use deep thinking to analyze the feature that has been presented to you, including what files and models might be required to implement the feature.
- **Clarifying Questions:** Ask clarifying questions to gather sufficient detail.
- **Scope:** Think about the scope of the feature being described. The scope should _not be more_ than a single simple feature, it will normally require no more than 5 success criteria. If the feature being described has too large of a scope present to the user possible options for reducing the scope.

### Phase 3: Generate FRD

- **Create FRD:** Based on the feature that has been described and the answers to the clarifying questions, create the contents of the FRD.
- **Save FRD:** Save the contents of the FRD to a file named `FRD.md` located in the `temp` directory of the repository.

## FRD Structure

The general FRD should include the following sections:

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