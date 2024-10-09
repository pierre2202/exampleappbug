defmodule DemoWeb.PageController do
  use DemoWeb, :controller

  @remember_me_cookie "_demo_web_user_remember_me"

  def home(conn, _params) do
    user_token = get_session(conn, :user_token)
    user_token && Demo.Accounts.delete_user_session_token(user_token)

    if live_socket_id = get_session(conn, :live_socket_id) do
      DemoWeb.Endpoint.broadcast(live_socket_id, "disconnect", %{})
    end

    conn
    |> renew_session()
    |> delete_resp_cookie(@remember_me_cookie)
    |> redirect(to: ~p"/")
  end

  defp renew_session(conn) do
    delete_csrf_token()

    conn
    |> configure_session(renew: true)
    |> clear_session()
  end


end
