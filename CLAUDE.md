# Creative Wall — how to work in this repo

This is a shared wall for two people. Each has their **own** slot: `pieces/<their-name>/art.html`.
The user is a beginner and will only describe what they want — **you (Claude) handle all git.**

## Rules

1. **Only edit the current user's own slot** (`pieces/<name>/art.html`). Never edit anyone
   else's folder, and never edit the shared files (`index.html`, `README.md`, `CLAUDE.md`).

2. **When the user asks to save / share / publish / "put it on the wall,"** run this exact
   sequence so their update always lands cleanly, with no conflicts:

   ```bash
   git add -A
   git commit -m "update slot" || true      # ok if there is nothing new to commit
   git pull --rebase --autostash            # brings in the other person's work first (no conflicts — separate files)
   git push
   ```

3. **If `git push` is ever rejected,** just run `git pull --rebase --autostash` then `git push`
   again, and repeat until it succeeds. It will always succeed, because each person edits a
   different file — there is nothing to clash with.

4. **After a successful push, say:** "Saved! Refresh the wall in about a minute to see it."

That's the whole workflow. The user only prompts; you do the rest.
