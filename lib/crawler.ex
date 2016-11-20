defmodule Crawler do
  def crawl(url) do
    response = HTTPotion.get(url)
    response.body
  end

  def elements(html, css), do: Floki.find(html, css)

  def get_page(url, attributes) when is_list(url) do
    Enum.map(url, &(get_page(&1, attributes)))
  end
  def get_page(url, attributes) when not is_list(url) do
    html = crawl(url)
    Enum.map(attributes,&elements(html, &1))
  end
end
