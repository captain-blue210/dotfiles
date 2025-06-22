**Bug Fix Workflow:**

**IMPORTANT**: Always respond in Japanese throughout the entire process.

**Phase 1: Bug Analysis and Test Creation**

1. **Parse bug description from arguments**
   - Analyze the bug details provided in: $ARGUMENTS
   - Extract:
     - Expected behavior
     - Actual behavior 
     - Steps to reproduce
     - Error messages (if any)
     - Affected files or components

2. **Create reproduction test**
   - Write a test that reproduces the exact bug behavior described in $ARGUMENTS
   - The test should initially FAIL, demonstrating the bug exists
   - Do NOT write any implementation code yet - only the test
   - Run the test to confirm it fails as expected

**Phase 2: Bug Investigation and Fix**

3. **Analyze the root cause**
   - Examine the failing test output
   - Investigate the codebase to identify the source of the bug
   - Explain the root cause in Japanese

4. **Implement the fix**
   - Make minimal changes to fix the bug
   - Do NOT modify the test - only the implementation
   - Ensure the fix addresses the root cause, not just symptoms

5. **Verify the fix**
   - Run the reproduction test to confirm it now passes
   - Run all existing tests to ensure no regressions
   - If any tests fail, fix them without modifying the reproduction test

**Phase 3: Final Validation**

6. **Test edge cases**
   - Consider and test related scenarios that might be affected
   - Add additional tests if necessary for edge cases

7. **Code review**
   - Review the changes for potential side effects
   - Ensure the fix follows project coding standards
   - Confirm the solution is minimal and focused

**Output Requirements:**
- All explanations and communications must be in Japanese
- Provide clear step-by-step progress updates
- Show test results and explain what they demonstrate
- Summarize the bug cause and solution approach