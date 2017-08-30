defmodule Kv.Impl do
  def new() do
    %{}
  end

  def lookup(names, name) do
    Map.fetch(names, name)
  end

  def store(names, name, value) do
    Map.put(names, name, value)
  end
end
