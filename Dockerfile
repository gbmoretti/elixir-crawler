FROM elixir:latest
ADD . /code
WORKDIR /code
CMD ["bash"]
