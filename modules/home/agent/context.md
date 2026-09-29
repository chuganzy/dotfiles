## GitHub operations

- Always use the GitHub CLI (`gh`) for GitHub operations, including creating,
  updating, viewing, and managing pull requests.
- Never use browser automation or computer use to create, edit, or submit a
  GitHub pull request unless I explicitly ask you to use the browser.
- If `gh` reports an authentication error from inside the sandbox, do not
  assume the GitHub credentials are invalid.
- Request scoped host access and retry the same `gh` command first, because
  GitHub CLI credentials may be stored in the macOS Keychain and unavailable
  inside the sandbox.
- Do not run `gh auth login`, `gh auth logout`, or otherwise modify GitHub
  authentication unless I explicitly request it.
- If `gh` still fails with host access, stop and report the exact error. Do not
  fall back to the browser.
