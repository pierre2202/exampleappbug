defmodule DemoWeb.DemoWeb.ChatLive.SwiftUI do
  use DemoNative, [:render_component, format: :swiftui]

  import DemoWeb.Components.SwiftUI

  import DemoWeb.UserLive.Components.SwiftUI


  def render(assigns, _interface) do
    ~LVN"""
    <VStack  style=" background(.linearGradient(
      colors: [.teal, .white],
      startPoint: .top,
      endPoint: .bottom
    ))">
   <Text  style="bold() font(.system(size: 16)) foregroundStyle(.gray)"> Assitance en discussion instantanée </Text>
      <HStack>    <Spacer style="frame(widht: 80)" /><Button  style="frame(width: 200) buttonStyle(.borderedProminent)
    buttonBorderShape(.roundedRectangle(radius: 20))"><Text style="font(.system(size: 12))">Masquer</Text> </Button></HStack>
   <Text  style="bold() font(.system(size: 12)) "> Un admnistrateur va vous repondre le plus rapidement possible </Text>

   <Spacer style="frame(height: 20)" />

        <ScrollView
      style={[
        "safeAreaPadding(.leading)",
        "safeAreaInset(edge: .bottom, content: :bottom_bar)",
      ]}
    >
      <VStack template="bottom_bar" spacing="0">
        <Divider />


      </VStack>
      <LazyVStack alignment="leading" style="frame(maxWidth: .infinity, alignment: .leading)">

      <VStack
          style={["frame(width: 340)",
            "padding(.vertical, 10)",
            "padding(.horizontal, 20)",
            "background(.green, in: .capsule)",
             "font(.system(size: 16))"
          ]}
        >
      <HStack> <Image style="frame(width: 20) foregroundStyle(.white)" systemName="message"/> <Text style="bold() font(.system(size: 12)) foregroundStyle(.white)"> Moi, le 10h01min :</Text>  <Spacer style="frame(widht: 60)" /></HStack>
        dsqdqdqsd  sqsd qsmDL ÙLQSmdl sqùLM</VStack>



       <VStack
          style={[
            "frame(width: 340)",
            "padding(.vertical, 8)",
            "padding(.horizontal, 20)",
            "background(.quinary, in: .capsule)",
             "font(.system(size: 16))"
          ]}
        >
      <HStack> <Image style="frame(width: 20) foregroundStyle(.white)" systemName="message"/><Text style="bold() font(.system(size: 12)) foregroundStyle(.white)"> pierre_louis22@hotmail.fr (Admin), le 10h02min :</Text>  <Spacer style="frame(widht: 60)" /></HStack>
        dsqdqdqsd  sqsd qsmDL ÙLQSmdl sqùLM dskq dkmlK DLKSQ MDKSLQK DLSQMk dlmskq Dsqlkm</VStack>



      </LazyVStack>
    </ScrollView>
    <LiveForm
   id="my-form4"
    phx-change="changed4"
     phx-submit="submit"

    >


            <HStack style="frame(width: 380); padding(.leading); padding(.vertical, 8); padding(.trailing, 8) ;  background(.quinary, in: .capsule)">




        <.input
         name="test"
         value=""
          placeholder={"Tappez votre message ..."}
        />
        <LiveSubmitButton
          style={[
            "buttonStyle(.borderedProminent)",
            "buttonBorderShape(.circle)",
            "controlSize(.small)",
            ~s[disabled(attr("disabled"))]
          ]}
          after-submit="clear"
          disabled={false}
        >
          <Image systemName="paperplane.fill" style="padding(4);" />
        </LiveSubmitButton>

    </HStack>
    </LiveForm>


    <Spacer style="frame(height: 20)" />
    <Button  style="frame(width: 200) buttonStyle(.borderedProminent)
    buttonBorderShape(.roundedRectangle(radius: 20))"> Problème resolu </Button>


    </VStack>
    """
  end
end
