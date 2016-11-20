defmodule Mix.Tasks.Crawler.Start do
  use Mix.Task

  def run(_) do
    base_url = "http://www.imdb.com"
    Crawler.get_page("#{base_url}/chart/top", ["td.titleColumn a"])
      |> Enum.map(&Floki.attribute(&1, "href"))
      |> Enum.map(fn link -> "#{base_url}#{link}" end)
  end
end
