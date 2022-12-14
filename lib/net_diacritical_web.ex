defmodule NetDiacriticalWeb do
  @moduledoc "Defines commonalities for `Phoenix` modules."
  @moduledoc since: "0.1.0"

  use Boundary,
    deps: [
      EEx.Engine,
      NetDiacritical,
      Phoenix,
      Phoenix.Template,
      Phoenix.PubSub,
      Plug
    ]

  @typedoc "Represents the connection."
  @typedoc since: "0.1.0"
  @type conn() :: Plug.Conn.t()

  @typedoc "Represents the connection option."
  @typedoc since: "0.1.0"
  @type opt() :: Plug.opts()
end
