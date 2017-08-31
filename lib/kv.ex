defmodule Kv do
  defdelegate new(),                      to: Kv.Impl
  defdelegate lookup(names, name),        to: Kv.Impl
  defdelegate store(names, name, value),  to: Kv.Impl
end
