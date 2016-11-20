FROM elixir:latest
ENV MIX_ARCHIVES /code/.mix/archives
COPY . /code
WORKDIR /code
CMD ["iex", "-S", "mix"]
