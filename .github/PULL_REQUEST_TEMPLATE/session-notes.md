---
name: 'Nix Hour Session Notes'
description: 'Use this template to submit notes and examples for a Nix Hour session'
title: '🚀 Nix Hour Session {{session_number}} – {{date}}'
labels: ['nix-hour', 'session-notes']
assignees: []
---

# 🚀 Nix Hour Session {{session_number}} – {{date}}

**Issue:** [#{{issue_number}}](https://github.com/ATA-LLC/nix-hour/issues/{{issue_number}})  
**Topic:** {{issue_title}}  
**Presenter(s):** {{presenters}}

---

## 📂 What’s in this PR

- Session notes for {{date}} (session {{session_number}})
- Code/examples discussed during the session
- Any follow-up items or TODOs

---

## 🔧 What We Did

- Summary of key learnings or demos
- Nix commands or concepts explored
- Notable snippets:

```nix
# Example
{ pkgs, ... }:
{
  packages = [ pkgs.hello ];
}
```

---

## 📄 Files Added/Changed

- `sessions/2025-03-31-session-00/notes.md`
- `sessions/2025-03-31-session-00/example.nix`

---

## 📝 Follow-ups

- [ ] {{todo item or future topic}}
- [ ] {{link to new issue if created}}

---

## 📹 Recording (if available)

> _Drop link here_

---

## ✅ Checklist

- [ ] This PR adds notes for a new session
- [ ] Code examples are included (if applicable)
- [ ] Follow-up actions noted
