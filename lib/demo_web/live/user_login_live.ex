defmodule DemoWeb.UserLoginLive do
  use DemoWeb, :live_view
  use DemoNative, :live_view

  def render(assigns) do
    ~H"""
    <div class="mx-auto max-w-sm">
      <.header class="text-center">
        Log in to account
        <:subtitle>
          Don't have an account?
          <.link navigate={~p"/users/register"} class="font-semibold text-brand hover:underline">
            Sign up
          </.link>
          for an account now.
        </:subtitle>
      </.header>

      <.simple_form for={@form} id="login_form" action={~p"/users/log_in"} phx-update="ignore">
        <.input field={@form[:email]} type="email" label="Email" required />
        <.input field={@form[:password]} type="password" label="Password" required />

        <:actions>
          <.input field={@form[:remember_me]} type="checkbox" label="Keep me logged in" />
          <.link href={~p"/users/reset_password"} class="text-sm font-semibold">
            Forgot your password?
          </.link>
        </:actions>
        <:actions>
          <.button phx-disable-with="Logging in..." class="w-full">
            Log in <span aria-hidden="true">→</span>
          </.button>
        </:actions>
      </.simple_form>
    </div>
    """
  end

  def handle_event("1", %{"v" => v}, socket) do
    socket =
      socket |> assign(focus: "false")

    send(self(), {"test", %{v: v}})


    {:noreply, socket}

end

def handle_info({"test", %{v: v}}, socket) do
  cond do
    v == "cancel" ->
      s = String.length(socket.assigns.pin)
      s = String.slice(socket.assigns.pin, 0, s-1)

    socket =  socket |> assign(pin: s)
    {:noreply, socket |> assign(focus: "true") }
    v == "reset" ->
      socket = socket |> assign(pin: "")
      {:noreply, socket |> assign(focus: "true") }

      true ->
socket =  socket |> assign(pin: socket.assigns.pin <> v)
{:noreply, socket |> assign(focus: "true") }

      end




end




  def handle_event("test", %{"user" => %{"email" => email, "password" => password}}, socket) do

    {:noreply, socket |> assign(email: email, password: password)}


  end


  def mount(_params, _session, socket) do
    email = Phoenix.Flash.get(socket.assigns.flash, :email)
    form = to_form(%{"email" => email}, as: "user")
    {:ok, assign(socket, form: form, pin: "", email: "", password: "", focus: "true"), temporary_assigns: [form: form] }
  end


  def handle_params(_p, _uri, socket) do


    {:noreply, socket}

  end






end
