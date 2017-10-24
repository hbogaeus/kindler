defmodule KindlerWeb.UploadController do
  use KindlerWeb, :controller
  require Logger

  def upload(conn, %{"upload" => upload}) do
    
    case Kindler.send_to_kindle(upload) do
      {:ok, term} -> Logger.info "#{inspect term}"
      {:error, term} -> Logger.info "#{inspect term}"
    end

    send_resp(conn, :ok, "")
  end
end