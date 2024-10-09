defmodule DemoWeb.Layouts.SwiftUI do
  use DemoNative, [:layout, format: :swiftui]
  import DemoWeb.Components.SwiftUI

  import DemoWeb.UserLive.Components.SwiftUI
  embed_templates "layouts_swiftui/*"
end
