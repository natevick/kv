defmodule Kv do
  def new() do
    { :ok, names } = GenServer.start_link(Kv.Server, %{})
    names
  end
  
  def lookup(names, name) do
    GenServer.call(names, {:lookup, name})
  end
  
  def store(names, name, value) do
    GenServer.cast(names, { :store, name, value })
    names
  end
end

