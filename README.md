# BackWave Feedback

The public tracker for **[BackWave](https://github.com/pdevito3/BackWave)**, a background job system for .NET. File bug reports and feature requests here.

BackWave's source lives in a private repository, so this repo exists purely as the place customers can reach: it holds no code, just issues, discussions, and this documentation.

## Filing something

- **Found a bug?** → [Open a bug report](../../issues/new?template=bug_report.yml). Please include your BackWave version, storage adapter, .NET version, and a minimal way to reproduce it.
- **Want a feature?** → [Open a feature request](../../issues/new?template=feature_request.yml). Lead with the *problem* you're trying to solve; an API sketch is welcome but optional.
- **Have a question** ("how do I…?") or general feedback? → [Start a Discussion](../../discussions). Questions filed as issues will be moved there.

Search existing issues first. Someone may have already raised it, and a 👍 or a comment helps prioritize.

## How issues are handled

Every issue moves through a single **status** at a time (shown as a `status:` label):

| Status | Meaning |
|---|---|
| `needs triage` | Submitted, not yet reviewed (the entry state) |
| `needs info` | Blocked on the reporter for a repro or an answer |
| `considering` | Under evaluation; may or may not be done |
| `backlog` | Accepted, will be done, not started |
| `in progress` | Actively being worked on |
| `done` | Shipped or resolved, then closed |
| `declined` | Won't do; closed with a reason |
| `duplicate` | Same as an existing issue; closed, linking the original |

Declines and duplicates always come with a reason or a link, so a closed issue is never a mystery.

---

## Maintainer setup (one-time)

This repo is scaffolded but not yet live. To stand it up:

1. **Create the repo** and push:
   ```bash
   gh repo create Back-Wave/backwave-feedback --public --source=. --remote=origin --push
   ```
2. **Enable Discussions:** Settings → General → Features → check **Discussions**.
3. **Create the labels:**
   ```bash
   ./scripts/setup-labels.sh
   ```
4. **Add the saved replies** from [`SAVED_REPLIES.md`](SAVED_REPLIES.md): Settings → Saved replies.

The glossary for this tracker's language lives in [`CONTEXT.md`](CONTEXT.md); the reasoning behind a few decisions is in [`docs/adr/`](docs/adr/).
