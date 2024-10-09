defmodule Demoweb.LiveComponent.SwiftUI do

  use DemoNative, [:component, format: :swiftui]


    def render(assigns, _interface) do
      ~LVN"""
      <Text>Hello, from SwiftUI!</Text>
      """
    end







  end
