# Lagoon

Aesthetic cool teal-to-lavender theme for VS Code and JetBrains IDEs (WebStorm, IntelliJ IDEA, PyCharm, …) with **Dark** and **Light** variants.

- **Lagoon Dark** — near-black cool background, lavender keywords, soft-blue functions, muted-green strings, whitish properties, dim variables. Tuned for low eye strain (low contrast).
- **Lagoon Light** — airy teal background, saturated tokens in the same hue family.

## Activate

### VS Code

`Ctrl+K Ctrl+T` → pick **Lagoon Dark** or **Lagoon Light**.

### JetBrains (WebStorm, IntelliJ IDEA, …)

Requires a 2025.3+ IDE. The plugin bundles a UI theme (built on Islands) and a matching editor color scheme for each variant.

1. Build the plugin: `bash jetbrains/build.sh` → `jetbrains/dist/lagoon-theme-<version>.jar` (needs a JDK for the `jar` tool).
2. *Settings → Plugins → ⚙ → Install Plugin from Disk…* → pick the jar.
3. *Settings → Appearance & Behavior → Appearance → Theme* → **Lagoon Dark** or **Lagoon Light**.

JetBrains highlights code with its own semantic keys rather than TextMate scopes, so a few VS Code distinctions have no equivalent: `return`/flow keywords use the regular keyword color, and bracket-pair colorization is not part of the theme.

## Screenshots

### Dark

![Lagoon Dark 1](screenshot/1.png)
![Lagoon Dark 2](screenshot/2.png)
![Lagoon Dark 3](screenshot/3.png)

### Light

![Lagoon Light 1](screenshot/4.png)
![Lagoon Light 2](screenshot/5.png)
![Lagoon Light 3](screenshot/6.png)

## Palette

| Token            | Dark      | Light     |
|------------------|-----------|-----------|
| Background       | `#11141A` | `#F2F7F6` |
| Keyword          | `#9B93C4` | `#0E8C7A` |
| `return` / flow  | `#63A98C` | `#0E8C7A` |
| Function         | `#6B9AC2` | `#2476B8` |
| Property / param | `#BCC4CD` | `#7C5CD4` |
| Variable         | `#8E94A6` | `#2A3B3E` |
| String           | `#69AE8F` | `#1E9E78` |
| Number           | `#63AC8E` | `#0E9E7E` |
| Comment          | `#5A6573` | `#8AA0A0` |

## License

MIT
