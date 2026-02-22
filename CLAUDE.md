# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Purpose

Personal solutions repository for [Exercism](https://exercism.org/) programming practice tracks. Not a deployable application — just a collection of exercise solutions.

## Structure

```
solutions/
  elixir/
  elm/
  gleam/
  go/
  haskell/
  python/
  ruby/
  rust/
  scala/
```

Each language track follows Exercism's conventions. Exercise solutions live in `solutions/<language>/<exercise>/`.

## Working on Exercises

Each exercise directory contains the problem spec and test file provided by Exercism. Run tests using the language's native test runner — there is no unified build system across tracks.

| Language | Test command |
|----------|-------------|
| Ruby | `ruby *_test.rb` or `bundle exec ruby *_test.rb` |
| Elixir | `mix test` |
| Go | `go test` |
| Rust | `cargo test` |
| Python | `python -m pytest` |
| Haskell | `stack test` |

## Notes

- Each language track is self-contained; do not assume shared tooling or dependencies.
- Follow each language's idiomatic conventions, not Rails conventions.
- StandardRB applies only to Ruby files.
