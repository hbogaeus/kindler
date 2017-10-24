defmodule KindlerWeb.Router do
  use KindlerWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end
  
  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/dev" do
    pipe_through [:browser]

    forward "/mailbox", Plug.Swoosh.MailboxPreview, [base_path: "/dev/mailbox"]
  end

  scope "/", KindlerWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/", KindlerWeb do
    pipe_through :api

    post "/upload", UploadController, :upload
  end
end
