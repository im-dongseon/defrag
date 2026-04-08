Title: llm-wiki · GitHub

Description: llm-wiki. GitHub Gist: instantly share code, notes, and snippets.

Source: https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f

---

[Skip to content](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f#start-of-content)
[All gists](https://gist.github.com/discover)
[Back to GitHub](https://github.com)
[Sign in](https://gist.github.com/auth/github?return_to=https%3A%2F%2Fgist.github.com%2Fkarpathy%2F442a6bf555914893e9891c11519de94f)
[Sign up](https://gist.github.com/join?return_to=https%3A%2F%2Fgist.github.com%2Fkarpathy%2F442a6bf555914893e9891c11519de94f&source=header-gist)
[Sign in](https://gist.github.com/auth/github?return_to=https%3A%2F%2Fgist.github.com%2Fkarpathy%2F442a6bf555914893e9891c11519de94f)
[Sign up](https://gist.github.com/join?return_to=https%3A%2F%2Fgist.github.com%2Fkarpathy%2F442a6bf555914893e9891c11519de94f&source=header-gist)
[Reload](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f)
[Reload](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f)
[Reload](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f)
Instantly share code, notes, and snippets.

# [karpathy](https://gist.github.com/karpathy)/[llm-wiki.md](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f)
[karpathy](https://gist.github.com/karpathy)
[llm-wiki.md](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f)
- 


    [Download ZIP](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f/archive/ac46de1ad27f92b28ac95459c782c07f6b8c964a.zip)


[Download ZIP](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f/archive/ac46de1ad27f92b28ac95459c782c07f6b8c964a.zip)
- 
          [Star

          5,000+
          (5,000+)](https://gist.github.com/login?return_to=https%3A%2F%2Fgist.github.com%2Fkarpathy%2F442a6bf555914893e9891c11519de94f)You must be signed in to star a gist


- 
            [Fork

          1,120
          (1,120)](https://gist.github.com/login?return_to=https%3A%2F%2Fgist.github.com%2Fkarpathy%2F442a6bf555914893e9891c11519de94f)You must be signed in to fork a gist


[Star

          5,000+
          (5,000+)](https://gist.github.com/login?return_to=https%3A%2F%2Fgist.github.com%2Fkarpathy%2F442a6bf555914893e9891c11519de94f)
[Fork

          1,120
          (1,120)](https://gist.github.com/login?return_to=https%3A%2F%2Fgist.github.com%2Fkarpathy%2F442a6bf555914893e9891c11519de94f)
- 





    Embed













        Select an option





























           Embed
      Embed this gist in your website.














           Share
      Copy sharable link for this gist.














          Clone via HTTPS
      Clone using the web URL.








              No results found


              [Learn more about clone URLs](https://docs.github.com/articles/which-remote-url-should-i-use)




        Clone this repository at &lt;script src=&quot;https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f.js&quot;&gt;&lt;/script&gt;





























- 










           Embed
      Embed this gist in your website.



- 










           Share
      Copy sharable link for this gist.



- 










          Clone via HTTPS
      Clone using the web URL.



- 



Save karpathy/442a6bf555914893e9891c11519de94f to your computer and use it in GitHub Desktop.

# Select an option
- 










           Embed
      Embed this gist in your website.



- 










           Share
      Copy sharable link for this gist.



- 










          Clone via HTTPS
      Clone using the web URL.

[Learn more about clone URLs](https://docs.github.com/articles/which-remote-url-should-i-use)
[Code](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f)
[Revisions
        1](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f/revisions)
[Stars
        5,000+](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f/stargazers)
[Forks
        1,120](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f/forks)

- 










           Embed
      Embed this gist in your website.



- 










           Share
      Copy sharable link for this gist.



- 










          Clone via HTTPS
      Clone using the web URL.

[Learn more about clone URLs](https://docs.github.com/articles/which-remote-url-should-i-use)
[Download ZIP](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f/archive/ac46de1ad27f92b28ac95459c782c07f6b8c964a.zip)
[Raw](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f/raw/ac46de1ad27f92b28ac95459c782c07f6b8c964a/llm-wiki.md)
[llm-wiki.md](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f#file-llm-wiki-md)

A pattern for building personal knowledge bases using LLMs.
This is an idea file, it is designed to be copy pasted to your own LLM Agent (e.g. OpenAI Codex, Claude Code, OpenCode / Pi, or etc.). Its goal is to communicate the high level idea, but your agent will build out the specifics in collaboration with you.

Most people's experience with LLMs and documents looks like RAG: you upload a collection of files, the LLM retrieves relevant chunks at query time, and generates an answer. This works, but the LLM is rediscovering knowledge from scratch on every question. There's no accumulation. Ask a subtle question that requires synthesizing five documents, and the LLM has to find and piece together the relevant fragments every time. Nothing is built up. NotebookLM, ChatGPT file uploads, and most RAG systems work this way.
The idea here is different. Instead of just retrieving from raw documents at query time, the LLM incrementally builds and maintains a persistent wiki — a structured, interlinked collection of markdown files that sits between you and the raw sources. When you add a new source, the LLM doesn't just index it for later retrieval. It reads it, extracts the key information, and integrates it into the existing wiki — updating entity pages, revising topic summaries, noting where new data contradicts old claims, strengthening or challenging the evolving synthesis. The knowledge is compiled once and then kept current, not re-derived on every query.
This is the key difference: the wiki is a persistent, compounding artifact. The cross-references are already there. The contradictions have already been flagged. The synthesis already reflects everything you've read. The wiki keeps getting richer with every source you add and every question you ask.
You never (or rarely) write the wiki yourself — the LLM writes and maintains all of it. You're in charge of sourcing, exploration, and asking the right questions. The LLM does all the grunt work — the summarizing, cross-referencing, filing, and bookkeeping that makes a knowledge base actually useful over time. In practice, I have the LLM agent open on one side and Obsidian open on the other. The LLM makes edits based on our conversation, and I browse the results in real time — following links, checking the graph view, reading the updated pages. Obsidian is the IDE; the LLM is the programmer; the wiki is the codebase.
This can apply to a lot of different contexts. A few examples:
- Personal: tracking your own goals, health, psychology, self-improvement — filing journal entries, articles, podcast notes, and building up a structured picture of yourself over time.
- Research: going deep on a topic over weeks or months — reading papers, articles, reports, and incrementally building a comprehensive wiki with an evolving thesis.
- Reading a book: filing each chapter as you go, building out pages for characters, themes, plot threads, and how they connect. By the end you have a rich companion wiki. Think of fan wikis like [Tolkien Gateway](https://tolkiengateway.net/wiki/Main_Page) — thousands of interlinked pages covering characters, places, events, languages, built by a community of volunteers over years. You could build something like that personally as you read, with the LLM doing all the cross-referencing and maintenance.
- Business/team: an internal wiki maintained by LLMs, fed by Slack threads, meeting transcripts, project documents, customer calls. Possibly with humans in the loop reviewing updates. The wiki stays current because the LLM does the maintenance that no one on the team wants to do.
- Competitive analysis, due diligence, trip planning, course notes, hobby deep-dives — anything where you're accumulating knowledge over time and want it organized rather than scattered.
[Tolkien Gateway](https://tolkiengateway.net/wiki/Main_Page)

## Architecture
There are three layers:
Raw sources — your curated collection of source documents. Articles, papers, images, data files. These are immutable — the LLM reads from them but never modifies them. This is your source of truth.
The wiki — a directory of LLM-generated markdown files. Summaries, entity pages, concept pages, comparisons, an overview, a synthesis. The LLM owns this layer entirely. It creates pages, updates them when new sources arrive, maintains cross-references, and keeps everything consistent. You read it; the LLM writes it.
The schema — a document (e.g. CLAUDE.md for Claude Code or AGENTS.md for Codex) that tells the LLM how the wiki is structured, what the conventions are, and what workflows to follow when ingesting sources, answering questions, or maintaining the wiki. This is the key configuration file — it's what makes the LLM a disciplined wiki maintainer rather than a generic chatbot. You and the LLM co-evolve this over time as you figure out what works for your domain.

## Operations
Ingest. You drop a new source into the raw collection and tell the LLM to process it. An example flow: the LLM reads the source, discusses key takeaways with you, writes a summary page in the wiki, updates the index, updates relevant entity and concept pages across the wiki, and appends an entry to the log. A single source might touch 10-15 wiki pages. Personally I prefer to ingest sources one at a time and stay involved — I read the summaries, check the updates, and guide the LLM on what to emphasize. But you could also batch-ingest many sources at once with less supervision. It's up to you to develop the workflow that fits your style and document it in the schema for future sessions.
Query. You ask questions against the wiki. The LLM searches for relevant pages, reads them, and synthesizes an answer with citations. Answers can take different forms depending on the question — a markdown page, a comparison table, a slide deck (Marp), a chart (matplotlib), a canvas. The important insight: good answers can be filed back into the wiki as new pages. A comparison you asked for, an analysis, a connection you discovered — these are valuable and shouldn't disappear into chat history. This way your explorations compound in the knowledge base just like ingested sources do.
Lint. Periodically, ask the LLM to health-check the wiki. Look for: contradictions between pages, stale claims that newer sources have superseded, orphan pages with no inbound links, important concepts mentioned but lacking their own page, missing cross-references, data gaps that could be filled with a web search. The LLM is good at suggesting new questions to investigate and new sources to look for. This keeps the wiki healthy as it grows.

## Indexing and logging
Two special files help the LLM (and you) navigate the wiki as it grows. They serve different purposes:
index.md is content-oriented. It's a catalog of everything in the wiki — each page listed with a link, a one-line summary, and optionally metadata like date or source count. Organized by category (entities, concepts, sources, etc.). The LLM updates it on every ingest. When answering a query, the LLM reads the index first to find relevant pages, then drills into them. This works surprisingly well at moderate scale (~100 sources, ~hundreds of pages) and avoids the need for embedding-based RAG infrastructure.
log.md is chronological. It's an append-only record of what happened and when — ingests, queries, lint passes. A useful tip: if each entry starts with a consistent prefix (e.g. ## [2026-04-02] ingest | Article Title), the log becomes parseable with simple unix tools — grep "^## \[" log.md | tail -5 gives you the last 5 entries. The log gives you a timeline of the wiki's evolution and helps the LLM understand what's been done recently.

```
## [2026-04-02] ingest | Article Title
```


```
grep "^## \[" log.md | tail -5
```

## Optional: CLI tools
At some point you may want to build small tools that help the LLM operate on the wiki more efficiently. A search engine over the wiki pages is the most obvious one — at small scale the index file is enough, but as the wiki grows you want proper search. [qmd](https://github.com/tobi/qmd) is a good option: it's a local search engine for markdown files with hybrid BM25/vector search and LLM re-ranking, all on-device. It has both a CLI (so the LLM can shell out to it) and an MCP server (so the LLM can use it as a native tool). You could also build something simpler yourself — the LLM can help you vibe-code a naive search script as the need arises.

## Tips and tricks
- Obsidian Web Clipper is a browser extension that converts web articles to markdown. Very useful for quickly getting sources into your raw collection.
- Download images locally. In Obsidian Settings → Files and links, set "Attachment folder path" to a fixed directory (e.g. raw/assets/). Then in Settings → Hotkeys, search for "Download" to find "Download attachments for current file" and bind it to a hotkey (e.g. Ctrl+Shift+D). After clipping an article, hit the hotkey and all images get downloaded to local disk. This is optional but useful — it lets the LLM view and reference images directly instead of relying on URLs that may break. Note that LLMs can't natively read markdown with inline images in one pass — the workaround is to have the LLM read the text first, then view some or all of the referenced images separately to gain additional context. It's a bit clunky but works well enough.
- Obsidian's graph view is the best way to see the shape of your wiki — what's connected to what, which pages are hubs, which are orphans.
- Marp is a markdown-based slide deck format. Obsidian has a plugin for it. Useful for generating presentations directly from wiki content.
- Dataview is an Obsidian plugin that runs queries over page frontmatter. If your LLM adds YAML frontmatter to wiki pages (tags, dates, source counts), Dataview can generate dynamic tables and lists.
- The wiki is just a git repo of markdown files. You get version history, branching, and collaboration for free.

```
raw/assets/
```

## Why this works
The tedious part of maintaining a knowledge base is not the reading or the thinking — it's the bookkeeping. Updating cross-references, keeping summaries current, noting when new data contradicts old claims, maintaining consistency across dozens of pages. Humans abandon wikis because the maintenance burden grows faster than the value. LLMs don't get bored, don't forget to update a cross-reference, and can touch 15 files in one pass. The wiki stays maintained because the cost of maintenance is near zero.
The human's job is to curate sources, direct the analysis, ask good questions, and think about what it all means. The LLM's job is everything else.
The idea is related in spirit to Vannevar Bush's Memex (1945) — a personal, curated knowledge store with associative trails between documents. Bush's vision was closer to this than to what the web became: private, actively curated, with the connections between documents as valuable as the documents themselves. The part he couldn't solve was who does the maintenance. The LLM handles that.

## Note
This document is intentionally abstract. It describes the idea, not a specific implementation. The exact directory structure, the schema conventions, the page formats, the tooling — all of that will depend on your domain, your preferences, and your LLM of choice. Everything mentioned above is optional and modular — pick what's useful, ignore what isn't. For example: your sources might be text-only, so you don't need image handling at all. Your wiki might be small enough that the index file is all you need, no search engine required. You might not care about slide decks and just want markdown pages. You might want a completely different set of output formats. The right way to use this is to share it with your LLM agent and work together to instantiate a version that fits your needs. The document's only job is to communicate the pattern. Your LLM can figure out the rest.

### [john-ver](https://gist.github.com/john-ver) commented [Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082063#gistcomment-6082063)
[john-ver](https://gist.github.com/john-ver)
[Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082063#gistcomment-6082063)
Turned this into an OpenClaw skill — now I can just talk to my agent and build the wiki through conversation. Install and go:
npx clawhub@latest install karpathy-llm-wiki [https://clawhub.ai/john-ver/karpathy-llm-wiki](https://clawhub.ai/john-ver/karpathy-llm-wiki)

```
npx clawhub@latest install karpathy-llm-wiki
```

Great idea, thanks for sharing.
Sorry, something went wrong.

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).

### [pithpusher](https://gist.github.com/pithpusher) commented [Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082078#gistcomment-6082078)
[pithpusher](https://gist.github.com/pithpusher)
[Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082078#gistcomment-6082078)
Your idea file concept clicked immediately — we already have AGENTS.md, CLAUDE.md, GEMINI.md for agent behavior, but nothing standard for the idea itself.
So I standardized it. IDEA.md: a vendor-neutral file for portable idea intent. Five sections — thesis, problem, how it works, what it doesn't do, where to start. Intentionally abstract, works with any agent.
Your LLM Wiki as a worked example: [https://github.com/pithpusher/IDEA.md](https://github.com/pithpusher/IDEA.md)
Sorry, something went wrong.

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).

### [Sandesh-seezo](https://gist.github.com/Sandesh-seezo) commented [Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082117#gistcomment-6082117)
[Sandesh-seezo](https://gist.github.com/Sandesh-seezo)
[Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082117#gistcomment-6082117)
I like this. Wonder if we can recreate the company intranet with such an architecture. The source of truth comes from humans who run/lead the department. The wiki is a self-improving knowledge base for Agents. Also need something that helps humans consume all of this information. Maybe each employee is able to build a personalized intranet that works for them. Could be helpful for learning about parts of the company that you don't interact with everyday, without adding a massive burden of communication on each department
Sorry, something went wrong.

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).

### [JaxVN](https://gist.github.com/JaxVN) commented [Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082152#gistcomment-6082152)
[JaxVN](https://gist.github.com/JaxVN)
[Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082152#gistcomment-6082152)
Just getting started with Obsidian and this gist has been genuinely inspiring! 🙏
I'm experimenting with using it as a second brain — both for my own notes and as shared memory for Claude Code and Gemini AI via Google Antigravity. Still learning a lot, but your approach gave me a solid mental model to work from. Thanks for sharing the idea openly!
Sorry, something went wrong.

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).

### [Paul-Kyle](https://gist.github.com/Paul-Kyle) commented [Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082160#gistcomment-6082160) • edited Loading Uh oh! There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).
[Paul-Kyle](https://gist.github.com/Paul-Kyle)
[Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082160#gistcomment-6082160)

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).
[Palinode](https://github.com/Paul-Kyle/palinode). git blame on every fact your agent knows. Been using markdown as agent artifacts since August, across multiple harnesses. This is where I've landed. Git-versioned markdown as source of truth, 17 MCP tools, hybrid search (BM25 + vector via SQLite-vec). Memory directory doubles as an Obsidian vault.

```
git blame
```

A deterministic executor sits between the LLM and your files. The LLM proposes operations (KEEP, UPDATE, MERGE, SUPERSEDE, ARCHIVE) as JSON, the executor validates and applies them, then git commit. Every fact gets provenance for free. When a newer source supersedes a stale claim, you can see exactly what changed and when.

```
git commit
```

The lint operation you describe maps directly. Orphan detection, stale file flagging, contradiction detection across active entities.
Running 227 files, 2,230 indexed chunks. The compounding effect is real. Agents that remember prior sessions make fewer mistakes and ask better questions.
Sorry, something went wrong.

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).

### [Jwcjwc12](https://gist.github.com/Jwcjwc12) commented [Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082231#gistcomment-6082231) • edited Loading Uh oh! There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).
[Jwcjwc12](https://gist.github.com/Jwcjwc12)
[Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082231#gistcomment-6082231)

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).
I've been building toward this same idea, and I think source provenance is the missing piece.
The problem I kept hitting: the LLM compiles knowledge from source files, but the moment those files change, the compiled knowledge might be wrong — and doesn't know it. Health checks help, but that's just the LLM re-reading and guessing whether something drifted.
So I made provenance structural. Every proposition (chunk of information) records which source files produced it and their content hashes at compilation time. When you query, it checks whether the files on disk still match. Match = valid. Mismatch = stale. The knowledge base grows with every query but never serves you something that's silently out of date.
The other piece: compilation happens at query time, not just at ingest. When you ask a question, the system pulls what's already known, reads the provenance sources, and identifies the delta — what the sources say about your question that isn't already captured. Only that gap gets compiled. Each query makes the knowledge base denser from a different angle, without re-deriving what's already there.
Git branching also works for free. Switch branches, files change on disk, different propositions light up as valid or stale. Merge, files converge, knowledge converges. No scope model — just hash checks on read.
Built this as the memory layer for [Freelance](https://github.com/duct-tape-and-markdown/freelance), a workflow engine for AI coding agents. SQLite, no embeddings. The agent reads files, writes propositions, and the system tracks provenance and validates freshness on every query.
Sorry, something went wrong.

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).

### [louiswang524](https://gist.github.com/louiswang524) commented [Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082268#gistcomment-6082268)
[louiswang524](https://gist.github.com/louiswang524)
[Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082268#gistcomment-6082268)
self managed and self improved personal LLM knowledge base. github: [https://louiswang524.github.io/blog/llm-knowledge-base/](https://louiswang524.github.io/blog/llm-knowledge-base/) blog: [https://github.com/louiswang524/llm-knowledge-base/](https://github.com/louiswang524/llm-knowledge-base/)
Sorry, something went wrong.

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).

### [blex2011](https://gist.github.com/blex2011) commented [Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082320#gistcomment-6082320)
[blex2011](https://gist.github.com/blex2011)
[Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082320#gistcomment-6082320)
I’ve done something similar, but I also route the output into a graph database built on an ontology so the knowledge base can compound more cleanly over time. The web clipper is still my front end for capture and smaller sets which are useful for many projects and faster, but the graph layer helps organize the material into a larger, more structured knowledge system. I think we’re going to see a lot more innovation in memory, token optimization, and general knowledge organization.”
Sorry, something went wrong.

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).

### [barrygfox](https://gist.github.com/barrygfox) commented [Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082321#gistcomment-6082321) via email
[barrygfox](https://gist.github.com/barrygfox)
[Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082321#gistcomment-6082321)
[…](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f)
[@Jwcjwc12](https://github.com/Jwcjwc12)
[https://github.com/duct-tape-and-markdown/freelance](https://github.com/duct-tape-and-markdown/freelance)
[https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f#gistcomment-6082231](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f#gistcomment-6082231)
[https://github.com/notifications/unsubscribe-auth/BQXH5SQFJYQFTNOI47ZUE4L4UKUEPBFKMF2HI4TJMJ2XIZLTSOBKK5TBNR2WLKBSGY4TOOJVHE2KI3TBNVS2QYLDORXXEX3JMSBKK5TBNR2WLJDUOJ2WLJDOMFWWLO3UNBZGKYLEL5YGC4TUNFRWS4DBNZ2F6YLDORUXM2LUPGBKK5TBNR2WLJDHNFZXJJDOMFWWLK3UNBZGKYLEL52HS4DFVRZXKYTKMVRXIX3UPFYGLK2HNFZXIQ3PNVWWK3TUUZ2G64DJMNZZDAVEOR4XAZNEM5UXG5FFOZQWY5LFVEYTINZSGU4DANJQU52HE2LHM5SXFJTDOJSWC5DF](https://github.com/notifications/unsubscribe-auth/BQXH5SQFJYQFTNOI47ZUE4L4UKUEPBFKMF2HI4TJMJ2XIZLTSOBKK5TBNR2WLKBSGY4TOOJVHE2KI3TBNVS2QYLDORXXEX3JMSBKK5TBNR2WLJDUOJ2WLJDOMFWWLO3UNBZGKYLEL5YGC4TUNFRWS4DBNZ2F6YLDORUXM2LUPGBKK5TBNR2WLJDHNFZXJJDOMFWWLK3UNBZGKYLEL52HS4DFVRZXKYTKMVRXIX3UPFYGLK2HNFZXIQ3PNVWWK3TUUZ2G64DJMNZZDAVEOR4XAZNEM5UXG5FFOZQWY5LFVEYTINZSGU4DANJQU52HE2LHM5SXFJTDOJSWC5DF)
[https://apps.apple.com/app/apple-store/id1477376905?ct=notification-email&mt=8&pt=524675](https://apps.apple.com/app/apple-store/id1477376905?ct=notification-email&mt=8&pt=524675)
[https://play.google.com/store/apps/details?id=com.github.android&referrer=utm_campaign%3Dnotification-email%26utm_medium%3Demail%26utm_source%3Dgithub](https://play.google.com/store/apps/details?id=com.github.android&referrer=utm_campaign%3Dnotification-email%26utm_medium%3Demail%26utm_source%3Dgithub)
Sorry, something went wrong.

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).

### [bendetro](https://gist.github.com/bendetro) commented [Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082335#gistcomment-6082335) • edited Loading Uh oh! There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).
[bendetro](https://gist.github.com/bendetro)
[Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082335#gistcomment-6082335)

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).
[@karpathy](https://github.com/karpathy) - Does your wiki know why it's shaped the way it is?
It knows what's in it. It can answer questions, find connections, flag contradictions. But can it explain how it arrived at its current structure?
Can it trace why one concept became a hub while another stayed peripheral? Can it critique its own evolution - recognise that an early ingestion biased the whole graph, or that a thread it followed for weeks turned out to be a dead end?
Can it rewrite itself - not just update pages, but restructure its understanding when it realises the framing was wrong?
I think the loop might be missing a step.
Not
ingest → compile → query → lint
but
ingest → compile → reflect → query → lint
Where reflect is synthesising not just what changed, but why - what decision was made, what alternatives existed, what reasoning held. Filed back as first-class pages, not buried in the log.
The wiki would stop just knowing things. It would know why it knows them.
I've been running your pattern on engineering teams for a few months - same architecture, same compounding.
The one addition: every knowledge change carries a decision record. Not just what the wiki knows, but what decision shaped it, what it replaced, and why.
Your best line: "good answers can be filed back into the wiki." Decisions should be too.
The wiki stops being a knowledge base. It becomes one that understands its own shape.
https://private-user-images.githubusercontent.com/42215057/573948809-6310883c-f70d-4730-9ae8-7e3733641f71.jpeg?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NzU0NTIxMzksIm5iZiI6MTc3NTQ1MTgzOSwicGF0aCI6Ii80MjIxNTA1Ny81NzM5NDg4MDktNjMxMDg4M2MtZjcwZC00NzMwLTlhZTgtN2UzNzMzNjQxZjcxLmpwZWc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjYwNDA2JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI2MDQwNlQwNTAzNTlaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1lMmY5MjAzMmZkZDY0NWM5YWI3ODQzMDA0YzRjYjg0ZTlmNTc4YmZhZTk0MWRkYTI1MjczYjgzODhjZDI3ZmYxJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.r0iEoq0jt3mJWMDfiCWZ0U_BVSDiccluDjqMT0_jUpcExplored the full approach here: [https://bendetron.substack.com/p/context-as-code-the-missing-layer](https://bendetron.substack.com/p/context-as-code-the-missing-layer)
Every knowledge base is an autobiography. It just hasn't read itself yet.
Sorry, something went wrong.

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).

### [gayawellness](https://gist.github.com/gayawellness) commented [Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082363#gistcomment-6082363)
[gayawellness](https://gist.github.com/gayawellness)
[Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082363#gistcomment-6082363)
Been running a multi-agent fleet (13 Claude instances) with a separate provenance layer we call Anamnesis that tracks how knowledge was compiled, why decisions were made, and what superseded what. Your wiki is the codebase. Anamnesis is the git log. They’re complementary — the wiki gives you synthesized knowledge, the provenance layer gives you the receipts for how you got there. Without it, a self-maintaining wiki has no memory of its own evolution. [https://github.com/gayawellness/anamnesis](https://github.com/gayawellness/anamnesis)
Sorry, something went wrong.

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).

### [trox](https://gist.github.com/trox) commented [Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082381#gistcomment-6082381)
[trox](https://gist.github.com/trox)
[Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082381#gistcomment-6082381)
This is amazing.
I built this in Obsidian + Claude Code on April 4 — almost synchronous to your post, independently arriving at the same architecture before reading it.
A few things I found working through it:
The structural coherence problem is real and underaddressed. Once you have Obsidian as the wiki layer, Zotero as the reference layer, and cloud storage as the file layer, they drift apart. I built a drift detection plugin (Zorro) that audits structural alignment across all three and proposes corrections without executing them: [https://codeberg.org/trox/obsidian-zorro](https://codeberg.org/trox/obsidian-zorro)
The mobile capture pipeline matters. Obsidian Web Clipper works at a desk. On the move I use a Pixel 9 Pro creating dated daily notes, with a sleepwatcher-triggered shell script that splits, fetches, and enriches them into YAML-fronted notes on wake from sleep. The raw/ → wiki step is fully automated.

```
raw/
```

Privacy architecture is the missing piece for institutional use. Your pattern assumes cloud LLM throughout. In a research/HE context, some material can't leave the machine — NDA, student data, grant review content. I run Ollama/Qwen locally for sensitive work and Claude for everything else, with explicit folder exclusions in .claudeignore. The two-tier LLM model is what makes the pattern usable in institutional settings.

```
.claudeignore
```

I'm a researcher at Hogeschool Rotterdam (Future of Working lectoraat / FabLab). Writing this up as a paper — your post appeared the day after I built it, which is either timing or convergent evidence that the pattern is ready.
Sorry, something went wrong.

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).

### [rjbudzynski](https://gist.github.com/rjbudzynski) commented [Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082396#gistcomment-6082396)
[rjbudzynski](https://gist.github.com/rjbudzynski)
[Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082396#gistcomment-6082396)
Shouldn't index.md and log.md rather be database tables, in sqlite, duckdb, whatever?
Sorry, something went wrong.

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).

### [mikhashev](https://gist.github.com/mikhashev) commented [Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082425#gistcomment-6082425) • edited Loading Uh oh! There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).
[mikhashev](https://gist.github.com/mikhashev)
[Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082425#gistcomment-6082425)

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).
https://private-user-images.githubusercontent.com/7105540/573954781-395a1dae-bee4-43b4-a631-dda6fe46a58f.jpeg?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NzU0NTIxMzksIm5iZiI6MTc3NTQ1MTgzOSwicGF0aCI6Ii83MTA1NTQwLzU3Mzk1NDc4MS0zOTVhMWRhZS1iZWU0LTQzYjQtYTYzMS1kZGE2ZmU0NmE1OGYuanBlZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNjA0MDYlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjYwNDA2VDA1MDM1OVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTkzY2NlNzVjNjk1N2UzMTY5MjgzOWE0YzhmNWQ4Nzc4NjY2NTYxMzZlZTg3YzkzYWM4YTJmNGJiMDgxZTBmOTYmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0In0.SqHX0zrP0sV0GgfFvhb92MQ99AF2MyGvv9x-RJp4OJ8 Very promising, will add to our project [https://github.com/mikhashev/dpc-messenger/tree/dev](https://github.com/mikhashev/dpc-messenger/tree/dev)
Sorry, something went wrong.

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).

### [bradwmorris](https://gist.github.com/bradwmorris) commented [Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082446#gistcomment-6082446)
[bradwmorris](https://gist.github.com/bradwmorris)
[Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082446#gistcomment-6082446)
as some others have mentioned - i built a version of this that starts with a database - local, SQLite.
shared a vid here: [https://x.com/bradwmorris/status/2040915399370514625?s=20](https://x.com/bradwmorris/status/2040915399370514625?s=20)
and also os'd repo here: [https://github.com/bradwmorris/ra-h_os](https://github.com/bradwmorris/ra-h_os)
i think the core ideas of externalised context managed by agents to increase 'token throughput' is the most important part - you can use filesystem or database
after using the filesystem approach for 6-12 months I just found that a local sqlite database was the best abstraction for agents, especially when you increase the size of the knowledge base and number of agents contributing to it
Sorry, something went wrong.

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).

### [maeste](https://gist.github.com/maeste) commented [Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082447#gistcomment-6082447)
[maeste](https://gist.github.com/maeste)
[Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082447#gistcomment-6082447)
That's a great way to index your docs and use the agent as your KB curator. I'm doing something very similar, and I was starting to think of it as a way to organise and index long-term memory for agents themselves.
Sorry, something went wrong.

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).

### [7TIN](https://gist.github.com/7TIN) commented [Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082452#gistcomment-6082452)
[7TIN](https://gist.github.com/7TIN)
[Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082452#gistcomment-6082452)
2 months ago i was working on same idea of using .md docs like wiki for the knowledge base I was implementing the personal ai which talk on our behalf, like in the team when we are not available or on leave but the team member urgently need help for some status update from us then there this personal agent who will talk on our behalf in our absence while strictly obeying the instructions and knowledge base
I got distracted after working on this for week but now when i saw Karpathy itself highlighting this it motivated me to work on this again
btw here is the repo and mvp i created [https://github.com/7TIN/centro/tree/main/core#readme](https://github.com/7TIN/centro/tree/main/core#readme)
Sorry, something went wrong.

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).

### [ProjectEli](https://gist.github.com/ProjectEli) commented [Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082497#gistcomment-6082497) • edited Loading Uh oh! There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).
[ProjectEli](https://gist.github.com/ProjectEli)
[Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082497#gistcomment-6082497)

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).
For the research field, I already made a public accessible structure. I call incremental experiment as base-delta protocol. It aims complete data traceablility while minimizing researcher documentation fatigue. I mixed PARA and wiki architecture. Anyone can use or contribute this Eli's Lab Framework (ELF) project.
[https://github.com/ProjectEli/ELF](https://github.com/ProjectEli/ELF)
Sorry, something went wrong.

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).

### [quenio](https://gist.github.com/quenio) commented [Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082524#gistcomment-6082524)
[quenio](https://gist.github.com/quenio)
[Apr 5, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082524#gistcomment-6082524)
Proposal of [AGENTS.md](https://gist.github.com/quenio/7f23731cdd3521b8331f9159b5132c66) for AutoWiki repos.
A revision of this original gist by Karpathy. Key differences: this document is intended to be the AGENTS.md file of a AutoWiki repo; source material is not part of the repo, only their references; AGENTS.md, SOURCES.md, and README.md are key files of the AutoWiki architecture, and can be found on the top-level or in any subfolder, to help scaling to a larger number of files.
Sorry, something went wrong.

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).

### [xoai](https://gist.github.com/xoai) commented [Apr 6, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082547#gistcomment-6082547)
[xoai](https://gist.github.com/xoai)
[Apr 6, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082547#gistcomment-6082547)
A few things I learned building [sage-wiki](https://github.com/xoai/sage-wiki), an implementation of the concept:
1. The compiler wants to be a pipeline, not a prompt. I ended up with 5 focused passes (diff → summarize → extract concepts → write articles → images), each incremental. One new paper touches ~10-15 wiki pages but skips everything else. Same mental model as make.
2. Ontology is the hardest part. Concept deduplication — is "attention mechanism" the same node as "self-attention"? — is where the LLM struggles most. A typed entity system with explicit relation types (is-a, part-of, contradicts) produces much cleaner wikis than free-form linking.
3. Every task should produce two outputs. Whatever you asked the wiki — that's output one. Output two is updates to relevant articles. Without this rule, knowledge evaporates into chat history.
4. The self-learning loop is underrated. When the compiler makes a mistake, the correction gets stored. Next run, same pattern triggers the fix automatically. The compiler literally gets better over time.
Where it's not there yet: proposition-level provenance (tracking which claims go stale when a source changes), streaming compilation feedback, and collaborative multi-writer wikis. The SQLite foundation can support these but they need real design work.
I wrote up the full story — architecture decisions, w[here](https://x.com/xoai/status/2040936964799795503) this diverges from the gist, and the deeper bet on wikis as an agent infrastructure layer here.
Sorry, something went wrong.

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).

### [zoharbabin](https://gist.github.com/zoharbabin) commented [Apr 6, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082573#gistcomment-6082573)
[zoharbabin](https://gist.github.com/zoharbabin)
[Apr 6, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082573#gistcomment-6082573)
example implementation for M&A due diligence agents - [https://x.com/zohar/status/2040948848302882900](https://x.com/zohar/status/2040948848302882900)
Sorry, something went wrong.

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).

### [H179922](https://gist.github.com/H179922) commented [Apr 6, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082610#gistcomment-6082610)
[H179922](https://gist.github.com/H179922)
[Apr 6, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082610#gistcomment-6082610)
Been thinking about this a lot lately. We've been trying to do this with cognition. Not the things you know, but the way you actually think. The heuristics you apply without noticing, the tensions between things you believe, the mental models that shape every decision before you're even aware you're making one.
The hard part isn't storage, it's extraction. You can't just ask someone what their values are. You have to start from a real decision. What did you reject? What tradeoff actually mattered to you? What rule did you apply on instinct? Our approach, an LLM reads through conversation transcripts on a schedule and classifies what it finds against a strict hierarchy of types. Decision rule, framework, tension, preference. "Idea" is last resort. Everything gets a confidence score and an epistemic tag so the system knows the difference between something you're sure about and something you're still working out.
Typed edges rather than a flat list. Supports, contradicts, evolved_into, depends_on. That's what makes it traversable rather than just searchable. An agent can walk the contradictions in your own reasoning, find connections between domains you never explicitly linked, or surface something you've been circling for weeks without naming it.
Nodes decay too, which felt important. Values hold. Ideas fade fast. The graph is supposed to model what's live in your thinking right now, not accumulate everything you've ever said, but that's probably a personal choice.
Mine has 8,000+ nodes at this point, 16 MCP tools, runs as an npx server. Curious whether the decay model resonates with you or whether you'd approach that part differently.
[https://github.com/multimail-dev/thinking-mcp](https://github.com/multimail-dev/thinking-mcp)
Sorry, something went wrong.

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).

### [saurabhjha21](https://gist.github.com/saurabhjha21) commented [Apr 6, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082665#gistcomment-6082665) • edited Loading Uh oh! There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).
[saurabhjha21](https://gist.github.com/saurabhjha21)
[Apr 6, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082665#gistcomment-6082665)

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).
"TL;DR: Karpathy's LLM Wiki = Kimball's dimensional modeling applied to knowledge. RAG is retrieval. The real problem is accumulation. We solved this in the 1990s."
[https://drive.google.com/file/d/1kdW4FA5gDNCT6sxezqXEbotOVBL5VQvl/view](https://drive.google.com/file/d/1kdW4FA5gDNCT6sxezqXEbotOVBL5VQvl/view)
[https://www.linkedin.com/posts/saurabh-j-10739622_carma-artificialintelligence-llm-activity-7446720329416097792-hHjq?utm_source=share&utm_medium=member_desktop&rcm=ACoAAASvBhcBitlskeYJi8fgyUL-P4jk1fU0rSI](https://www.linkedin.com/posts/saurabh-j-10739622_carma-artificialintelligence-llm-activity-7446720329416097792-hHjq?utm_source=share&utm_medium=member_desktop&rcm=ACoAAASvBhcBitlskeYJi8fgyUL-P4jk1fU0rSI)
Sorry, something went wrong.

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).

[ekonomikmobil](https://gist.github.com/ekonomikmobil)
[Apr 6, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082668#gistcomment-6082668)
E-MOBI / EKONOMIK MOBIL, S.R.L. - Your Partner in Artificial Intelligence
At E-MOBI / EKONOMIK MOBIL, S.R.L., through our specialized branch E-MOBI Robotics Developments, we are pioneers in integrating Artificial Intelligence to power the future of your business.
We don't just provide solutions; we create synergies that transform your potential.
Our expertise is built around the following fundamental pillars, ensuring a holistic and results-oriented approach:
- 
Revolutionary Innovations: We are at the forefront of the latest advances in AI, developing innovative solutions that redefine industry standards. From fundamental research to practical application, our goal is to offer you a decisive competitive advantage.

- 
Profound Transformations: AI is a catalyst for change. We help companies achieve significant transformations by rethinking their processes, strategies, and business models to fully embrace the digital age.

- 
Limitless Scalability: Our solutions are designed to grow with you. Thanks to modular and flexible architectures, our AI systems adapt and evolve with your changing needs and business expansion.

- 
Increased Productivity: By automating repetitive tasks and optimizing workflows, our AI solutions unleash human potential, allowing your teams to focus on higher-value initiatives and achieve unprecedented levels of productivity.

- 
Intelligent Automation: We implement sophisticated and intelligent automation systems, enabling autonomous and optimized execution of operations, from data management to decision-making.

- 
Operational Efficiencies: AI is a powerful lever for optimization. We identify bottlenecks and design algorithms that streamline your operations, reduce costs, and maximize the use of your resources.

- 
Guaranteed Sustainability: Our approaches incorporate a long-term vision. By designing robust and sustainable solutions, we ensure the resilience of your systems and contribute to sustainable and responsible growth.

- 
Concrete Benefits: Each AI solution we offer is designed to deliver tangible added value. From improving the customer experience to optimizing the supply chain, our applications have a direct and measurable impact on your bottom line.

- 
Essential Self-Sustainability: Our goal is to equip you to master and fully leverage the potential of AI. We transfer the knowledge and skills necessary for you to become autonomous in the management and evolution of your intelligent systems.

- 
Continuous Security: The security of your data and systems is our top priority. We integrate the most advanced security protocols into every step of our development, ensuring consistent protection and unwavering confidence in your AI-powered operations.

Revolutionary Innovations: We are at the forefront of the latest advances in AI, developing innovative solutions that redefine industry standards. From fundamental research to practical application, our goal is to offer you a decisive competitive advantage.
Profound Transformations: AI is a catalyst for change. We help companies achieve significant transformations by rethinking their processes, strategies, and business models to fully embrace the digital age.
Limitless Scalability: Our solutions are designed to grow with you. Thanks to modular and flexible architectures, our AI systems adapt and evolve with your changing needs and business expansion.
Increased Productivity: By automating repetitive tasks and optimizing workflows, our AI solutions unleash human potential, allowing your teams to focus on higher-value initiatives and achieve unprecedented levels of productivity.
Intelligent Automation: We implement sophisticated and intelligent automation systems, enabling autonomous and optimized execution of operations, from data management to decision-making.
Operational Efficiencies: AI is a powerful lever for optimization. We identify bottlenecks and design algorithms that streamline your operations, reduce costs, and maximize the use of your resources.
Guaranteed Sustainability: Our approaches incorporate a long-term vision. By designing robust and sustainable solutions, we ensure the resilience of your systems and contribute to sustainable and responsible growth.

### [ekonomikmobil](https://gist.github.com/ekonomikmobil) commented [Apr 6, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082668#gistcomment-6082668)
Concrete Benefits: Each AI solution we offer is designed to deliver tangible added value. From improving the customer experience to optimizing the supply chain, our applications have a direct and measurable impact on your bottom line.
Essential Self-Sustainability: Our goal is to equip you to master and fully leverage the potential of AI. We transfer the knowledge and skills necessary for you to become autonomous in the management and evolution of your intelligent systems.
Continuous Security: The security of your data and systems is our top priority. We integrate the most advanced security protocols into every step of our development, ensuring consistent protection and unwavering confidence in your AI-powered operations.
E-MOBI / EKONOMIK MOBIL, S.R.L. and E-MOBI Robotics Developments:
Together, let's build a smarter, more efficient, and more secure future for your business.
Junior Jules PDG
Sorry, something went wrong.

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).

### [WolfgangSenff](https://gist.github.com/WolfgangSenff) commented [Apr 6, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082671#gistcomment-6082671)
[WolfgangSenff](https://gist.github.com/WolfgangSenff)
[Apr 6, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082671#gistcomment-6082671)
I wonder if this works better than, or on par with, RAG because while it feels overly simplistic (relative to RAG), human's understand markdown far better than a bunch of numbers. You give me a ton of numbers out of context and I won't know what is wrong with them, but if you give me a file that has, "CRITICAL: DO STUFF THIS WAY" at the top and you better believe i'm more likely to do them that way. Pretty interesting.
Sorry, something went wrong.

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).

### [teodorofodocrispin-cmyk](https://gist.github.com/teodorofodocrispin-cmyk) commented [Apr 6, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082678#gistcomment-6082678)
[teodorofodocrispin-cmyk](https://gist.github.com/teodorofodocrispin-cmyk)
[Apr 6, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082678#gistcomment-6082678)
"Great insights on the tokenization bottleneck. While we focus on how models 'see' tokens, there's a massive gap in how we 'filter' them before they hit the inference engine, especially in Web3 environments.
I’ve been working on an Autonomous Privacy Layer that acts as a 'Data Customs Gate'. It uses a Sovereign Pricing Model (Solana-verified) to sanitize PII in real-time before it reaches the LLM. It’s designed specifically for the Agent-to-Agent economy—minimizing risk without sacrificing the context needed for high-velocity LLM tasks.
Would love to get your thoughts on this middleware approach for the next generation of privacy-first AI infrastructure: [https://github.com/teodorofodocrispin-cmyk/TrustBoost-PII-Sanitizer](https://github.com/teodorofodocrispin-cmyk/TrustBoost-PII-Sanitizer)"
Sorry, something went wrong.

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).

### [Nanman5](https://gist.github.com/Nanman5) commented [Apr 6, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082952#gistcomment-6082952)
[Nanman5](https://gist.github.com/Nanman5)
[Apr 6, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082952#gistcomment-6082952)
Have you guys heard about Recursive Language Models (RLMs) ? it is worth reading and personally im using it up on this
Sorry, something went wrong.

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).

### [ZhuoZhuoCrayon](https://gist.github.com/ZhuoZhuoCrayon) commented [Apr 6, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082971#gistcomment-6082971)
[ZhuoZhuoCrayon](https://gist.github.com/ZhuoZhuoCrayon)
[Apr 6, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6082971#gistcomment-6082971)
I'm doing something similar, abstracting knowledge into issues, plans, snippets, and troubleshooting. I've always believed that building a knowledge base that allows humans and AI to collaborate can effectively standardize AI output. Whether it's Cursor, Codex, or Claude, they can all rely on the knowledge base to quickly start or continue a task.
🔗 [https://github.com/ZhuoZhuoCrayon/ai-workspace](https://github.com/ZhuoZhuoCrayon/ai-workspace)
Sorry, something went wrong.

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).

### [earaizapowerera](https://gist.github.com/earaizapowerera) commented [Apr 6, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6083196#gistcomment-6083196) • edited Loading Uh oh! There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).
[earaizapowerera](https://gist.github.com/earaizapowerera)
[Apr 6, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6083196#gistcomment-6083196)

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).
Great concept. I've been working on something that takes this same idea but adds two things that become critical when you move from personal to team use:
1. Hierarchical inheritance. In your model, the LLM maintains backlinks and indexes manually. In Waykee Cortex, the hierarchy IS the structure — a Screen inherits from its Module which inherits from its System. One API call returns the full context chain. No index maintenance needed.
2. Two dimensions — Knowledge + Work. Your wiki is the "what exists" layer. But teams also need "what's being done" — tasks, bugs, milestones. In Waykee, a bug on the Login screen inherits context from both the Login documentation AND the Sprint it belongs to (dual-parent).
The result is similar to what you describe — knowledge compounds over time, every interaction adds to the base — but it works for teams, not just individuals. Model-agnostic, works with Claude Code and Codex for now.
Built it as open source, launching this week:  [https://waykee.com/](https://gist.github.com/karpathy/url) (launching this week — sign up for early access)
Your "Obsidian is the IDE, LLM is the programmer, wiki is the codebase" framing is perfect. In Waykee terms: Waykee is the IDE, any LLM is the programmer, the hierarchical knowledge base is the codebase.
[https://waykee.com/](https://gist.github.com/karpathy/url)
Sorry, something went wrong.

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).

### [0xjaishy](https://gist.github.com/0xjaishy) commented [Apr 6, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6083206#gistcomment-6083206)
[0xjaishy](https://gist.github.com/0xjaishy)
[Apr 6, 2026](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f?permalink_comment_id=6083206#gistcomment-6083206)
This is a real improvement, but not perfect yet.
One eval query, “what happened recently in the knowledge vault,” still puts Knowledge Vault Index at top-1 while Knowledge Log and Recent Knowledge Notes are in top-3.
So the compiled-wiki retrieval is materially better, but the meta-query ranking can still be tightened further.
Sorry, something went wrong.

### Uh oh!
There was an error while loading. [Please reload this page](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f).
[Sign up for free](https://gist.github.com/join?source=comment-gist)
[Sign in to comment](https://gist.github.com/login?return_to=https%3A%2F%2Fgist.github.com%2Fkarpathy%2F442a6bf555914893e9891c11519de94f)

- 
            [Terms](https://docs.github.com/site-policy/github-terms/github-terms-of-service)

- 
            [Privacy](https://docs.github.com/site-policy/privacy-policies/github-privacy-statement)

- 
            [Security](https://github.com/security)

- 
            [Status](https://www.githubstatus.com/)

- 
            [Community](https://github.community/)

- 
            [Docs](https://docs.github.com/)

- 
            [Contact](https://support.github.com?tags=dotcom-footer)

- 


       Manage cookies



- 


      Do not share my personal information



[Terms](https://docs.github.com/site-policy/github-terms/github-terms-of-service)
[Privacy](https://docs.github.com/site-policy/privacy-policies/github-privacy-statement)
[Security](https://github.com/security)
[Status](https://www.githubstatus.com/)
[Community](https://github.community/)
[Docs](https://docs.github.com/)
[Contact](https://support.github.com?tags=dotcom-footer)

