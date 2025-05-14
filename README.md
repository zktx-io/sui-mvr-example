# Sui MVR Provenance Example

## 🛡 MVR, redefined.

> **V now stands for _Verifiability_** — not just a registry, but a **trust layer** for Move packages.

With provenance support powered by **CI/CD**, this project transforms the **Move Registry** into something you can **verify**, not just use.

✅ Verifiable  
✅ Provenance-backed  
✅ CI-integrated

> _Trust isn't assumed. It's built — and verified._

---

This repository contains an example Move package designed to demonstrate how to register a package on the [**Move Registry (MVR)**](https://www.moveregistry.com/) with in-toto provenance data.

🔗 **Live on MVR**:  
[@notary/hello-mvr on moveregistry.com](https://www.moveregistry.com/package/@notary/hello-mvr)

It includes:

- A simple Move module (`@notary/hello-mvr`)
- GitHub Actions workflow to:
  - Publish the package to the Sui blockchain
  - Generate and attach `intoto.jsonl` provenance metadata
  - Register the provenance in the MVR using `sui-mvr-provenance`

This example is part of a broader initiative to enable **verifiable smart contract deployment** using [SLSA](https://slsa.dev) and [Sigstore](https://www.sigstore.dev/) standards on Sui.

---

### 📦 Based on Sui Foundation's Move Intro Course

This example is derived from the [Sui Move Intro Course – Hello World project](https://github.com/sui-foundation/sui-move-intro-course/tree/main/unit-one/example_projects/hello_world).
