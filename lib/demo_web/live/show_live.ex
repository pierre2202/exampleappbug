defmodule DemoWeb.DemoWeb.ShowLive do
  use DemoWeb, :live_view
  use DemoNative, :live_view

  def render(assigns) do
    ~H"""
    <div> Hello, Html </div>
    """

  end

  def mount(params, session, socket) do

    {:ok, assign(socket, count: 0, text: "", list: ["Paris 16", "Paris 17", "Paris 18"], slist: [], show: 0)}
  end

  def handle_event("writecom", unsigned_params, socket) do
    if socket.assigns.show == 1 do
    {:noreply, assign(socket, show: 0)}
    else
    {:noreply, assign(socket, show: 1)}
    end
  end
end
