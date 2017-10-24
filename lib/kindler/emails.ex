defmodule Kindler.Emails do
  import Swoosh.Email

  def kindle(file) do
    kindle_email = Application.fetch_env!(:kindler, :kindle_email)
    approved_email = Application.fetch_env!(:kindler, :approved_email)

    new()
    |> to({"Kindle", kindle_email})
    |> from({"Kindler Robot", approved_email})
    |> text_body("Here comes a fresh book!")
    |> attachment(file)
  end
end