<p align="center">
  <h1 align="center">rlgp-thesis</h1>
  <p align="center">
    LaTeX source for <em>Reinforced Linear Genetic Programming</em>, a BCS honours thesis exploring the integration of Q-Learning with Linear Genetic Programming.
    <br /><br />
    <a href="https://github.com/urmzd/rlgp-thesis/releases/latest/download/thesis.pdf">Download PDF</a>
    &middot;
    <a href="https://github.com/urmzd/linear-gp">Framework Source</a>
  </p>
</p>

## Abstract

Linear Genetic Programming (LGP) is a powerful technique that allows for a variety of problems to be solved using a linear representation of programs. This thesis proposes Reinforced Linear Genetic Programming (RLGP), a novel approach that uses Q-Learning on top of LGP to learn optimal register-action assignments. RLGP is evaluated on the CartPole-v1 and MountainCar-v0 environments from OpenAI Gym using a [framework](https://github.com/urmzd/linear-gp) written in Rust.

## Building

### Prerequisites

- TeX Live (full distribution)
- `latexmk`

### Compile

```bash
latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" thesis.tex
```

### arXiv Submission Package

```bash
bash draft_package.sh
```

## Structure

```
├── thesis.tex          # Main document
├── thesis.bib          # Bibliography
├── dalcsthesis.cls     # Dalhousie CS thesis class
├── tables/             # Pre-generated longtables (from CSV data)
├── assets/
│   ├── experiments/    # Results and figures
│   └── parameters/     # Hyperparameter configurations
└── draft_package.sh    # arXiv packaging script
```

## Citation

```bibtex
@thesis{mukhammadnaim2023rlgp,
  title  = {Reinforced Linear Genetic Programming},
  author = {Mukhammadnaim, Urmzd},
  school = {Dalhousie University},
  type   = {Bachelor's Honours Thesis},
  year   = {2023}
}
```
