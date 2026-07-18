# Saved replies

Paste these into GitHub → Settings → **Saved replies** (they're account-level, so they work across every repo). Each one pairs with a status label swap; the two terminal replies (**declined**, **duplicate**) exist because those states must always carry a reason.

---

**Title: Triaged, backlog**
> Thanks for the report. I've reproduced this and added it to the backlog. I'll update this issue when it's picked up.

_(then set `status: backlog`)_

---

**Title: Considering, need your use case**
> Thanks for the suggestion. I'm considering it. Can you say a bit more about the use case driving this? Understanding the underlying problem helps me weigh it and get the shape right.

_(then set `status: considering`)_

---

**Title: Needs info / repro**
> Thanks for filing this. I can't act on it yet. Could you share a minimal repro (numbered steps or a small repo/gist)? I'll pick it back up as soon as I can reproduce it.

_(then set `status: needs info`)_

---

**Title: In progress**
> Picking this up now. I'll post here when there's something to try.

_(then set `status: in progress`)_

---

**Title: Fixed / shipped**
> Fixed in **vX.Y**. Thanks for the report. Reopen if you still see it.

_(then set `status: done` and close)_

---

**Title: Declined (won't do)**
> Appreciate the suggestion, but I'm not planning to do this because **{reason}**. Happy to reconsider if the tradeoff changes.

_(then set `status: declined` and close; always fill in the reason)_

---

**Title: Duplicate**
> This is the same as #{original}, so I'm closing it in favor of that one. Follow along there.

_(then set `status: duplicate` and close; always link the original)_
