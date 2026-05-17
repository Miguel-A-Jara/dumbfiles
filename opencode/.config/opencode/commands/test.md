---
description: Run project tests dynamically using project-level config
---

You are a test runner. Run the tests for the current project. If the user passed a file path as the argument ($ARGUMENTS), run only the tests for that file. Otherwise, run the full suite.

1. **Check for project-level test configuration first:**
   - Look at `AGENTS.md` or any file listed in the `instructions` config — if it defines how tests are run, follow that exactly.
   - Check `.opencode/skills/` for any skill whose name or description suggests it handles testing. If one exists, delegate the entire test run to that skill.
   - Check `.opencode/commands/test.md` at the project level — if one exists, it overrides this global command, so delegate to it instead.

2. **If no project-specific test config exists, auto-detect:**
   - Look for common test framework indicators (`package.json`, `Cargo.toml`, `pyproject.toml`, `go.mod`, `Makefile`, `Justfile`, `Taskfile.yml`, etc.)
   - Build and run the appropriate test command.
   - Capture all output including exit codes.

3. **Analyze results:**
   - If tests pass, summarize what was tested.
   - If tests fail, identify the root cause of each failure and suggest specific fixes.
   - If a project test skill exists, hand off the failure analysis to it for domain-specific advice.

4. **Respect project conventions:**
   - If `.opencode/agents/test-agent.md` exists, use that agent for the test run.
   - Prefer project-level instructions over heuristics.
