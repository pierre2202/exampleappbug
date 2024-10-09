defmodule DemoWeb.DebatLive do
  use DemoWeb, :live_view
  use DemoNative, :live_view

  def render(assigns) do
    ~H"""
    <div> Hello, Html </div>
    """

  end

  def mount(params, session, socket) do

    {:ok, assign(socket, count: 2, text: "", list: ["Paris 16", "Paris 17", "Paris 18"], slist: Demo.Localites.Localite.searchcommune("paris"))}
  end

  def handle_event("press", _p, socket) do
    {:noreply,
    socket |> assign(:count, socket.assigns.count + 1)
           |> put_flash(:info, "test")
          |> push_event("autoclear", %{})}
  end

  def handle_event("changed", %{"test" => ""}, socket) do

    socket =
      socket
      |> assign(:slist, [])

    {:noreply, socket}
  end





  def handle_event("changed", %{"test" => value}, socket) do
    localites = Demo.Localites.Localite.searchcommune(value)


    {:noreply, assign(socket, slist: localites)}
  end



end
