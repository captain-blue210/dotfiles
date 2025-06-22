Execute the test suite specified by $ARGUMENTS and provide a comprehensive test report in Japanese.

**Test Execution Process:**

1. **Identify the test type and framework**

   - Analyze the $ARGUMENTS to determine the specific test category (ut, it, e2e, etc.)
   - Detect the testing framework being used in the project (Jest, Vitest, Playwright, etc.)
   - Locate relevant test files and configuration

2. **Run the tests**

   - Execute the appropriate test command for the specified test type
   - Capture both stdout and stderr output
   - Record execution time and exit codes

3. **Analyze test results**

   - Parse test output to extract key metrics (passed, failed, skipped)
   - Identify specific test failures with error messages and stack traces
   - Note any performance issues or warnings

4. **Generate comprehensive report in Japanese**
   - Summarize overall test execution status
   - List failed tests with detailed error analysis
   - Provide actionable recommendations for fixing failures
   - Include test coverage information if available
   - Suggest next steps for improving test quality

**Response must be entirely in Japanese and include:**

- テスト実行結果の概要
- 失敗したテストの詳細分析
- 修正提案とアクションアイテム
- テストカバレッジの状況（利用可能な場合）
