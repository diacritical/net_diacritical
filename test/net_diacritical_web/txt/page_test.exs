defmodule NetDiacriticalWeb.TXT.PageTest do
  @moduledoc "Defines an `ExUnit.Case` case."
  @moduledoc since: "0.2.0"

  use NetDiacriticalCase.View, async: true

  alias NetDiacriticalWeb, as: Web

  alias Web.TXT

  alias TXT.Page

  describe "hello/1" do
    import Page, only: [hello: 1]

    setup [:c_assigns_greeting, :c_resp_body_hello]

    test "FunctionClauseError", %{assigns: assigns} do
      assert_raise FunctionClauseError, fn -> hello(assigns.invalid) end
    end

    test "success", %{assigns: assigns, resp_body: resp_body} do
      assert hello(assigns.valid) == resp_body.hello
    end
  end
end
