# Nginx Log Analyser 📊

A fast, lightweight Bash script to parse, filter, and extract key metrics from Nginx and Apache access logs using native Linux text-processing tools.

This project is an implementation of the [roadmap.sh Nginx Log Analyser Project](https://roadmap.sh/projects/nginx-log-analyser).

---

## 📌 Overview

Web server logs capture immense amounts of traffic data daily. Inspecting these files manually during high-traffic events, troubleshooting, or incident response can be overwhelming. **Nginx Log Analyser** automates the analysis of standard Combined Log Format files to reveal traffic patterns, identify potential scraping/DDoS vectors, and detect HTTP errors without needing complex log management stacks.

---

## ✨ Features

- **Top 5 IP Addresses:** Identifies high-frequency client IPs to detect crawlers, scrapers, or abusive traffic.
- **Top 5 Requested Paths:** Highlights the most frequently visited endpoints, APIs, or static assets.
- **Top 5 HTTP Status Codes:** Surfaces the distribution of status codes (e.g., `200`, `301`, `404`, `500`) to spot application errors.
- **Top 5 User Agents:** Analyzes client agents to inspect browser distribution, bots, and automated tools.
- **Pure Shell Pipeline:** Leverages native Unix text processing (`awk`, `sort`, `uniq`, `head`) for maximum speed on large log files.

---

## ⚙️ Prerequisites

- Linux or macOS terminal environment
- GNU Bash (`>= 4.0`)
- Standard text utilities: `awk`, `sort`, `uniq`, `head`
- Access logs structured in standard Combined Log Format (e.g., Nginx default `access.log`)

---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/mohammadzafari-dev/nginx-log-analyser.git
cd nginx-log-analyser
