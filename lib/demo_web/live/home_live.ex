defmodule DemoWeb.HomeLive do
  use DemoWeb, :live_view
  use DemoNative, :live_view

  def render(assigns) do
    ~H"""
    <div> Hello, Html </div>
    """

  end

  def mount(params, session, socket) do

    {:ok, assign(socket, count: 0, text: "", list: ["Paris 16", "Paris 17", "Paris 18"], slist: [], show: false)}
  end

  def handle_event("press", _p, socket) do

    {:noreply,
    socket |> assign(show: if socket.assigns.show == false do true else false end)}
  end

  def handle_event("changed", %{"test" => ""}, socket) do

    socket =
      socket
      |> assign(:slist, [])

    {:noreply, socket}
  end

  def handle_event("delete_user", _params, socket) do
    Demo.Accounts.delete_user(socket.assigns.current_user)
    {:noreply, push_navigate(socket, to: ~p"/users/sign-in")}
  end





  def handle_event("changed", %{"test" => value}, socket) do
    localites = Demo.Localites.Localite.searchcommune(value)


    {:noreply, assign(socket, slist: localites)}
  end



end
