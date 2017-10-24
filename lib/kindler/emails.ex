defmodule Kindler.Emails do
  import Swoosh.Email

  def kindle(file) do
    new()
    |> to({"Babo", "babo@live.com"})
    |> from({"Babi", "babi@hotmail.com"})
    |> attachment(file)
  end
end