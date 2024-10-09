defmodule DemoWeb.LiveComponent do
  use DemoWeb, :live_component


  @impl true
  def render(assigns) do
    ~H"""
      <div>sqlkds</div>
    """
  end
  def update(assigns, socket) do

    {:ok, socket}
  end


end
