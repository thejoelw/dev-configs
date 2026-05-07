# Committing

Never commit automatically. Only run `git commit` when I explicitly ask ("commit this", "make a commit", etc.). Staging changes, fixing bugs, or finishing a task is **not** a request to commit.

You also **must** open the message in my editor, so I can review and tweak it before it lands. When I ask you to commit, your default workflow should be:
```sh
mktemp "$TMPDIR/claude-commit-msg.XXXXXX"
# Read the temp file
# Write your recommended message to the printed temp file, then:
GIT_EDITOR=$EDITOR git commit --file={temp_file} --edit
```

This will block until I close the editor. Remember, you **must** read $TMPDIR, otherwise you'll have trouble writing the temp file. Your `git commit` command **must** be a single line (no heredocs), otherwise the sandbox will block it.

If I ask you to "commit autonomously", skip the editor override (the default is `GIT_EDITOR=true`). Your workflow should be:
```sh
mktemp "$TMPDIR/claude-commit-msg.XXXXXX"
# Read the temp file
# Write your recommended message to the printed temp file, then:
git commit --file={temp_file}
```
