# Crawler

##TODO:
- [ ] Use headless browser to do a better crawl in sites with JS
- [ ] Tests
- [ ] Write a better README

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `crawler` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:crawler, "~> 0.1.0"}]
    end
    ```

  2. Ensure `crawler` is started before your application:

    ```elixir
    def application do
      [applications: [:crawler]]
    end
    ```
