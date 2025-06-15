# CLAUDE.md

## Conversation Guidelines

- Always response in Japanese

## Development Policy

### Test-Driven Development (TDD)

- Follow a test-driven development (TDD) approach by default
- Begin by writing tests based on expected input and output
- Do **not** write any implementation code at this stage—only the tests
- Run the tests and confirm that they fail
- Once test failure is confirmed and the test logic is validated, commit the test code
- Proceed to implement code that will make the test pass
- Do **not** modify the test during implementation; only adjust the implementation
- Repeat the process until all tests pass

### Functional Domain Modeling

- Use function. Do **not** use class.
- Design types using Algebraic Data Types

### Do not throw exceptions internally

- Use neverthrow to return Result<T, E>
- Wrap external throws using fromThrowable and fromAsyncThrowable from neverthrow
- Prefer TypeScript language features over neverthrow methods (isOk(), isErr() instead of match(), andThen())

### Use early return pattern to improve readability

- Avoid deep nesting with else statements
- Handle error cases first with early return

## Workflow

**IMPORTANT**: run these steps in order.

1. **Explore**
   1. **Status check** — `git status && TodoRead`
   2. **Read docs** — open needed files under `@docs/` and project root `CLAUDE.md`
2. **Plan & research** — make a strategy after reading the spec. **MUST** do this before writing code.
   - **Spec analysis** — pull out requirements and limits from docs
   - **Tech choice** — pick methods, patterns, libraries
   - **Research** — check similar solutions and best practices
   - **Existing code review** — find affected areas and impact
   - **Implementation steps** — decide the order of work
   - **Risk check** — list possible problems and fixes
3. **Taks breakdown** — set detailed tasks
   - Break down tasks into a step-by-step process using the Chain-of-Thought approach.
   - Include verification criteria for each step to ensure accuracy and completeness
4. **TDD build** — **MUST** write tests → code → refactor (Red → Green → Refactor)
5. **Update Docs** — update needed files under `@docs/` and project root `CLAUDE.md`
6. **Stage** — `git add .` (wait for separate commit command)

**Note:**

- Steps 1-2 are crucial for improving solution quality, preventing premature coding
- Proceed to the next step only after meeting the completion criteria of the current step.
- If an error occurs, go back to the previous step and re-execute it.

## Tool Usage Guidelines

- For maximum efficiency, whenever you need to perform multiple independent operations, invoke all relevant tools simultaneously rather than sequentially.
- After receiving tool results, carefully reflect on their quality and determine optimal next steps before proceeding. Use your thinking to plan and iterate based on this new information, and then take the best next action.
- Call the web search tool when: user asks about current events, factual information after January 2025, or any query requiring real-time data. Be proactive in identifying when searches would enhance your response.
