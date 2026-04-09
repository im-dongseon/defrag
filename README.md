# defrag: Autonomous Knowledge Management System

**Compound your second brain with AI agents.**

`defrag` is an intelligent, agent-driven knowledge management system designed to turn fragmented information into a structured, compounding second brain. Inspired by **Andrej Karpathy's LLM Wiki** and **Louis Wang's automation patterns**, it utilizes AI agents to autonomously manage your Obsidian vault using **Johnny.Decimal** organization and **PARA** methodology.

---

## 1. Core Philosophy

- **Knowledge Compounding:** Every interaction — from ingesting a new source to asking a question — is designed to increase the density and value of your knowledge base over time.
- **Agent-First Maintenance:** The tedious work of tagging, linking, cross-referencing, and synthesizing is delegated entirely to AI agents (e.g., Claude Code, Gemini CLI).
- **Cost-Efficient Search:** Instead of expensive full-text RAG (Retrieval-Augmented Generation) on every query, `defrag` uses a **3-Step Search Protocol** for maximum efficiency and precision.

---

## 2. Directory Structure (Johnny.Decimal + PARA)

```text
Knowledge Base: Ingest (Raw) → Wiki (Refined) → Synthesis (Insight)
```

| Area | Directory | Role |
|------|-----------|------|
| **Staging** | `00_Inbox/` | Incoming files (text, images, PDFs). |
| **System** | `01_System/` | Rules, Index, Dashboard, and Templates. |
| **Admin** | `10-19/` | Administrative and personal management. |
| **Wiki (Tech)** | `20-29/` | Persistent technical wiki (Software, Infra, etc.). |
| **Wiki (Project)**| `30-39/` | Active projects (Temporary/Focused). |
| **Outputs** | `81_Outputs/` | Structured Q&A results and reports. |
| **Synthesis** | `82_Synthesis/` | AI-generated synthesis notes (Compounded insight). |
| **Archive** 🚫 | `91_Raw_Archive/` | Processed raw source files (Read-only). |

---

## 3. Key Workflows

### 3-1. Ingest & Classify (New File Processor)
When you drop new files into `00_Inbox`, the **nfp (New File Processor)** skill:
1.  **Similarity Check:** Compares the new file with the existing wiki to decide whether to merge (Rewrite) or create a new note.
2.  **Naming Convention:** Enforces Johnny.Decimal formatting (`[ID]_[Category]/[Topic]/[Filename].md`).
3.  **Sidecar Creation:** For binary files (PDFs, Images), it extracts text into a sidecar markdown note and archives the original.

### 3-2. 3-Step Search Protocol
`defrag` follows a strict protocol to minimize token costs and maximize search precision:
1.  **Step 1 (Index Scan):** Scans domain-specific `index.md` files (Lowest cost).
2.  **Step 2 (Path Exploration):** Scans file names and directory structures via `find`/`glob`.
3.  **Step 3 (Global Search):** Performs a full-text search (`grep`) only if the previous steps fail.

### 3-3. Active Knowledge Synthesis
The agent periodically runs a reflection pass to identify hidden connections across notes and generates `type: synthesis` notes in `82_Synthesis`, creating second-order knowledge.

---

## 4. Setup & Deployment

### 4-1. Environment Configuration
Clone the repository and create a `.env` file in the root directory.

```bash
# .env example
VAULT_DIR="/Users/[USERNAME]/Documents/your-obsidian-vault"
```

### 4-2. Vault Deployment
Deploy the system rules and agent skills to your Obsidian vault.

```bash
# Run the deployment script
chmod +x _system/deploy_to_vault.sh
./_system/deploy_to_vault.sh
```

---

## 5. Agent Skills (Skills Suite)

Professional agent skills are located in `_system/skills/`:
- **new-file-processor (nfp):** Auto-classification and standardization of inbox files.
- **search:** Internal 3-step search protocol skill used by AI agents for navigating knowledge.
- **defrag-search:** Dedicated skill for external interfaces (e.g., Hermes/Telegram) to search the knowledge base.

---

## 6. External Integration: Hermes (Telegram Search)

Using [Hermes](https://github.com/your-hermes-repo), you can search your Obsidian vault in real-time via Telegram. This feature is powered by the `defrag-search` skill.

### 6-1. Telegram Bot Setup
1. Issue a bot token through Telegram's BotFather.
2. Register your vault path and bot token in the Hermes configuration file.

### 6-2. Search Commands
- `/search [keyword]`: Searches the vault using the 3-step protocol via the `defrag-search` skill and provides a summary.
- `/ask [question]`: Generates answers based on the knowledge base using an AI agent.

---

## 7. Inspiration & References

`defrag` is built upon the foundational work of the following projects:

- **[Andrej Karpathy's LLM Wiki](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f):** The original vision of an LLM-managed wiki for compounding knowledge.
- **[Louis Wang's Self-Improving Personal KB](https://louiswang524.github.io/blog/llm-knowledge-base/):** A practical implementation of Karpathy's ideas using AI agent skills.

For detailed analysis of these inspirations, see the documents in `_system/reference/`.

---

Developed by **defrag-dev team**. Experience the compounding effect of your knowledge.
