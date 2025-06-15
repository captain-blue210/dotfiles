1. **Determine the current branch**
   - If it is `dev`, ask the user whether to:
     - commit directly to `dev`, or
     - create a new working branch.
   - If a new branch is chosen, generate a clear branch name, create it, and execute all remaining actions on that branch.
2. **Stage, split, and commit changes**
   - Break the diff into logical pieces and commit each chunk with a precise, complete message.
   - If a changed file is not in `.gitignore` and looks unnecessary, confirm with the user before committing.
   - Always exclude the following from commits (do **not** add them to `.gitignore`):
     - Firestore emulator import files (e.g., `fs_export/*`, `package-lock.json`)
