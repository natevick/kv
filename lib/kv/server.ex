defmodule Kv.Server do
  use GenServer
  alias Kv.Impl

  def init(store) do
    {:ok, store}
  end

  def handle_call({:lookup, name}, _, store) do
    result = Impl.lookup(store, name)
    {:reply, result, store}
  end

  def handle_cast({:store, name, value}, store) do
    {:noreply, Impl.store(store, name, value)}
  end
end
