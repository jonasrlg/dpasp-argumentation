# Argumentation Mining with Probabilistic ASP

This repository hosts the undergraduate thesis work of **Jonas Rodrigues Lima Gonçalves** at the Institute of Mathematics and Statistics, University of São Paulo (IME-USP). The project investigates how Probabilistic Answer Set Programming (PASP) and knowledge compilation techniques can support coherent argument extraction in neuro-symbolic pipelines.

## Thesis Overview

Argumentation mining seeks structured representations of argumentative discourse, yet purely connectionist models struggle with the uncertainty and combinatorial constraints of the task. The thesis proposes a PASP-based formulation that replaces hand-crafted integer programming modules with a declarative probabilistic logic layer. By compiling PASP programs into tractable probabilistic circuits, the work enables gradient-based learning, amortised inference, and integration with deep-learning toolkits such as PyTorch and JAX. The study contrasts max-entropy and credal semantics, illustrating how both settings benefit from circuit-based inference.

**Keywords:** Probabilistic Logic Programming, Answer Set Programming, Knowledge Compilation, Argument Mining, Neuro-Symbolic AI.

## Key Artefacts

- [`text/template-ime/tese.pdf`](text/template-ime/tese.pdf) – compiled thesis following the IME-USP template (`tese.tex`).
- [`text/slides/slides.pdf`](text/slides/slides.pdf) – defense presentation providing a visual walkthrough of the motivation, methodology, and findings.
- [`text/poster/Poster.tex`](text/poster/Poster.tex) – A0 poster summarising the knowledge-compilation workflow for PASP.
- [`text/proposal/proposal.pdf`](text/proposal/proposal.pdf) – initial research proposal submitted prior to the thesis.

## Repository Layout

```
.
├── docs/                  # GitHub Pages site with a project overview
│   └── index.html
└── text/
    ├── content/           # Thesis chapters, bibliography, and figures
    ├── slides/            # Beamer presentation sources + compiled PDF
    ├── poster/            # Beamer poster sources
    ├── proposal/          # Research proposal source + PDF
    └── template-ime/      # IME-USP thesis template, configs, and output
```

## Building the Thesis

The IME-USP template directory contains all automation required to rebuild the manuscript:

```bash
cd text/template-ime
make  # requires latexmk, biber, and minted (Python)
```

Slides can be regenerated with `latexmk -pdf slides.tex` from `text/slides/`. Poster compilation follows the standard beamerposter workflow (`latexmk -pdf Poster.tex`).

For additional details on template configuration and available make targets, consult [`text/template-ime/README.md`](text/template-ime/README.md).
