FROM elixir:latest
ENV MIX_ARCHIVES /code/.mix/archives
COPY . /code
WORKDIR /code
RUN mix deps.get
RUN mix compile
CMD ["mix", "crawler.start"]
