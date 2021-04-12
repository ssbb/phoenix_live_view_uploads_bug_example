defmodule DemoWeb.PageLive do
  use DemoWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, allow_upload(socket, :avatar, accept: :any, max_entries: 2)}
  end

  def handle_event("validate", _params, socket) do
    IO.inspect("validate")
    {:noreply, socket}
  end

  def handle_event("save", _params, socket) do
    IO.inspect("save")

    # Will fail because files are not uploaded
    # consume_uploaded_entries(socket, :avatar, fn %{path: path}, _entry ->
    #   IO.inspect(path)
    # end)

    {:noreply, socket}
  end
end
