defmodule DemoWeb.DemoWeb.ChatLive do
  use DemoWeb, :live_view
  use DemoNative, :live_view

  def render(assigns) do
    ~H"""
    <div> Hello, Html </div>
    """

  end

  def mount(params, session, socket) do

    {:ok, assign(socket, count: 0, text: "", list: ["Paris 16", "Paris 17", "Paris 18"], slist: [])}
  end

end
