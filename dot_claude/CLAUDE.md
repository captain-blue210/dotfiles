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

## Workflow

### Workflow A: Explore, Plan, Code, Commit

- **Step 1: Explore**
  - Ask Claude to read relevant files, images, or URLs
  - Use explicit file references or general pointers
  - Consider using subagents for complex problems to verify details
- **Step 2: Plan**
  - Use "think" modes to trigger extended thinking
    - "think" < "think hard" < "think harder" < "ultrathink"
  - Create a document or GitHub issue to document the plan
  - Allows resetting to planning stage if implementation differs
- **Step 3: Code**
  - Implement solution based on plan
  - Verify reasonableness of solution during implementation
- **Step 4: Commit**
  - Commit the result
  - Create pull request
  - Update READMEs or changelogs if relevant

**Note:** Steps 1-2 are crucial for improving solution quality, preventing premature coding

---

### Workflow B: Commit

When you receive the single keyword **“commit”**, follow these steps:

1. **Determine the current branch**
   - If it is `dev`, ask the user whether to:
     - commit directly to `dev`, or
     - create a new working branch.
   - If a new branch is chosen, generate a clear branch name, create it, and execute all remaining actions on that branch.
2. **Stage, split, and commit changes**
   - Break the diff into logical pieces and commit each chunk with a precise, complete message.
   - If a changed file is not in `.gitignore` and looks unnecessary, confirm with the user before committing.
   - Always exclude the following from commits (do **not** add them to `.gitignore`):
     - Firestore emulator import files (e.g., `fs_export/*`)
     - `package-lock.json`

---

## 使用ガイドライン

- **問題の性質に応じてワークフローを選択**
- **各ステップの完了条件を満たしてから次へ進む**
- **エラー時は前のステップに戻って再実行**
- **思考の深さ調整：** think < think hard < think harder < ultrathink
