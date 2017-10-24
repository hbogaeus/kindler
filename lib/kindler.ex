defmodule Kindler do
  @moduledoc """
  Kindler keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """
  require Logger

  def send_to_kindle(file) do
    email = Kindler.Emails.kindle(file)
    Logger.info "#{inspect email.attachments}"
    Kindler.Mailer.deliver(email)
  end
end
