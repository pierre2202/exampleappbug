defmodule DemoWeb.SearchLive do
  use DemoWeb, :live_view
  use DemoNative, :live_view

  def render(assigns) do
    ~H"""
    <div> Hello, Html </div>
    """

  end

  def mount(_params, _session, socket) do
    {:ok, assign(socket, search_text: "", entered_search: "Pull down to search")}
  end


  def handle_event("search-changed", %{ "searchText" => search_text }, socket) do
    {:noreply, assign(socket, search_text: search_text)}
  end
  def handle_event("search", _params, socket) do
    {:noreply, assign(socket, entered_search: socket.assigns.search_text)}
  end
end
