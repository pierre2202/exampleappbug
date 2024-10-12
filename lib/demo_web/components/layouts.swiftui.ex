defmodule DemoWeb.Layouts.SwiftUI do
  use DemoNative, [:layout, format: :swiftui]
  


  embed_templates "layouts_swiftui/*"
end
