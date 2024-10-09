defmodule DemoWeb.Styles.App.SwiftUI do
  use LiveViewNative.Stylesheet, :swiftui

  # Add your styles here
  # Refer to your client's documentation on what the proper syntax
  # is for defining rules within classes
  ~SHEET"""
  "padding" do

  font(.title)
  padding()
  foregroundStyle(.green)
  end


    "font:" <> font do
    font(.{font})
  end

  "clipShape:cicle" do
  clipShape(.circle)
  shadow(radius: 7)

  end


  "button-border" do
  stroke(.blue, lineWidth: 3)
  end

"button-" <> color do
 buttonStyle(.plain)
  font(.system(size: 16, weight: .bold, design: .monispaced))
  frame(width: 50, height: 50)
  foregroundStyle(
    .blue
  )
  overlay(content: :border)
  background(Color.clear)
  clipShape(.circle)

    end


    """



  # If you need to have greater control over how your style rules are created
  # you can use the function defintion style which is more verbose but allows
  # for more fine-grained controled
  #
  # This example shows what is not possible within the more concise ~SHEET
  # use `<Text class="frame:w100:h200" />` allows for a setting
  # of both the `width` and `height` values.

  # def class("frame:" <> dims) do
  #   [width] = Regex.run(~r/w(\d+)/, dims, capture: :all_but_first)
  #   [height] = Regex.run(~r/h(\d+)/, dims, capture: :all_but_first)

  #   ~RULES"""
  #   frame(width: {width}, height: {height})
  #   """
  # end
end
