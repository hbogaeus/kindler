defmodule KindlerWeb.UploadController do
  use KindlerWeb, :controller

  def upload(conn, %{"upload" => upload}) do

    Kindler.send_to_kindle(upload)
    
    conn
    |> send_resp(:ok, "")
  end
end