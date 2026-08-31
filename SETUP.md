# Setup Guide for Dnyaneshwar202006 Profile

Everything here lives in your special profile repository named **`Dnyaneshwar202006`**
(`github.com/Dnyaneshwar202006/Dnyaneshwar202006`).

---

## 1. Local Preview & Generation

All local SVG assets (portrait, skill radar, stat cards, repo cards) can be generated locally and previewed in `preview.html`:

```bash
# Generate portrait from assets/image.png
python3 scripts/dotify.py "assets/image.png" -o assets/portrait --cols 90 --color --reveal --equalize --detail 0.5

# Generate skill radar
python3 scripts/radar.py --data assets/skills.json -o assets/radar

# Generate language radar
python3 scripts/radar.py --data assets/languages.json -o assets/radar-langs --values

# Generate stat cards & repo cards
python3 scripts/cards.py --user Dnyaneshwar202006 --projects assets/projects.json --out assets
```

Open `preview.html` in your browser to inspect everything before pushing.

---

## 2. Push to GitHub

```bash
git add -A
git commit -m "feat: setup automated dynamic profile"
git push origin main
```

> **Note**: The repository must be **public** so that GitHub can render the SVGs.

---

## 3. Configure GitHub Actions Permissions

1. Go to repository **Settings** → **Actions** → **General**.
2. Under **Workflow permissions**, select **Read and write permissions**.
3. Click **Save**.

---

## 4. Add the `METRICS_TOKEN` Secret

1. Visit [GitHub Tokens](https://github.com/settings/tokens) → **Generate new token (classic)**.
2. Select scopes: **`read:user`** (and **`repo`** if you want private repository contributions counted).
3. Copy the generated token.
4. In your repository: **Settings** → **Secrets and variables** → **Actions** → **New repository secret**.
5. Name it **`METRICS_TOKEN`** and paste the token.

---

## 5. Trigger the Workflows

Under the **Actions** tab in your repository, run:
- **Metrics**: Generates isometric 3D contribution graph, habits, and languages into `assets/`.
- **Snake**: Generates contribution snake animation into `assets/`.
- **Charts and cards**: Refreshes stats, repo stars, and radar charts.
