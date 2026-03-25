#!/bin/bash
set -e

# Configuration
MAIN_TEX="thesis.tex"
OUTPUT_FILE="arxiv_submission.tar.gz"
BUILD_DIR="arxiv_build"

echo "Cleaning up previous build..."
rm -rf "$BUILD_DIR" "$OUTPUT_FILE"

echo "Creating build directory..."
mkdir -p "$BUILD_DIR"

echo "Copying source files..."
cp "$MAIN_TEX" "$BUILD_DIR/"
cp *.bib "$BUILD_DIR/"
cp *.cls "$BUILD_DIR/"
cp -r assets "$BUILD_DIR/"
cp -r tables "$BUILD_DIR/"

cd "$BUILD_DIR"

echo "Compiling to generate .bbl file..."
pdflatex -interaction=nonstopmode "$MAIN_TEX" || true
bibtex "${MAIN_TEX%.*}" || true
pdflatex -interaction=nonstopmode "$MAIN_TEX" || true
pdflatex -interaction=nonstopmode "$MAIN_TEX" || true

echo "Preparing submission package..."
rm -f *.aux *.log *.out *.toc *.lof *.lot *.loa *.lol *.blg *.pdf

echo "Creating archive..."
cd ..
tar -czvf "$OUTPUT_FILE" -C "$BUILD_DIR" .

echo "Done. Submission package at $OUTPUT_FILE"
