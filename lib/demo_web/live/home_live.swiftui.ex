defmodule DemoWeb.HomeLive.SwiftUI do
  use DemoNative, [:render_component, format: :swiftui]

  import DemoWeb.Components.SwiftUI

  import DemoWeb.UserLive.Components.SwiftUI


  def render(assigns, _interface) do
    ~LVN"""
    <VStack>
      <VStack alignement="leading" style=" background(.linearGradient(
      colors: [.blue, .teal],
      startPoint: .top,
      endPoint: .bottom
    )) ">


          <Spacer style="frame(height: 10) navigationBarBackButtonHidden(true)"/>

             <HStack><Spacer style="frame(width: 10)"/>
             <.image url={~p"/assets/logo144.png"}>
      <:success style="resizable(); frame(width: 50, height: 50)" />
    </.image><Spacer style="frame(width: 230)"/>  <.link navigate={~p"/search"} style=" buttonStyle(.plain)  "><Image systemName="magnifyingglass" style="resizable() foregroundStyle(.white) frame(width: 20, height: 20)" /></.link>
             <Spacer style="frame(width: 30)"/>

           <%= if @current_user == nil do %>
             <Menu style="frame(width: 50) ">
         <Group template="label">

         <Button ><Image systemName="line.3.horizontal" style="resizable() foregroundStyle(.white) frame(width: 30, height: 20)" /></Button>

      </Group>
           <.link navigate={~p"/users/log_in"} >
            Connexion
                 <Image systemName="arrow.right.circle"/>
          </.link>


        </Menu>
           <% end %>

             <%= if @current_user != nil do %>
        <Menu style="frame(width: 25) menuIndicator(.hidden)">
         <Group template="label">
        <Image systemName="line.3.horizontal" style="resizable() foregroundStyle(.white) frame(width: 30, height: 20)" />
      </Group>

        <Section>

             <.link navigate={} >
           Modération <Image systemName="arrow.right.circle"/></.link>

           <.link navigate={} >
           <HStack> Connecté avec </HStack>
            <%= @current_user.email %><Image systemName="arrow.right.circle"/></.link>
           </Section>

              <.link navigate={} >
            Profil
               <Image systemName="arrow.right.circle"/></.link>

             <.link navigate={} >
           Messagerie
               <Image systemName="arrow.right.circle"/></.link>
             <.link navigate={} >
           Dons, marque-pages & soutiens
               <Image systemName="arrow.right.circle"/></.link>
        <Section> Vos projets
         <.link navigate={} >
            Communaux
               <Image systemName="arrow.right.circle"/></.link>

              <.link navigate={} >
           De communauté de communes

               <Image systemName="arrow.right.circle"/></.link>
                <.link navigate={} >

            Départementaux
               <Image systemName="arrow.right.circle"/> </.link>

           <.link navigate={} >

            Régionaux
               <Image systemName="arrow.right.circle"/>
              </.link>
                  <.link navigate={} >

           Nationaux
              <Image systemName="arrow.right.circle"/>
              </.link>
                      <.link navigate={~p"/148/index"} >

           Européens
              <Image systemName="arrow.right.circle"/>
              </.link>
              </Section>

        <Section>

         <.link navigate={~p"/users/test2"} >
                   Deconnexion  <Image systemName="person.fill.xmark"/>
          </.link></Section>
        </Menu>
        <% end %>
             <%= if @current_user != nil do %>
         <Image style="  frame(width: 15, height: 10)" systemName="envelope"/><Text style="foregroundStyle(
    .red) font(.system(size: 12, weight: .bold))">3</Text> <% end %> </HStack>
         <Divider/>

         </VStack>
         <HStack/>


       <TabView>

         <VStack tag="1" style="tabItem(:item)">
        <Label
          template="item"
          systemImage="house"
        >
          Acceuil
        </Label>
      <ScrollView style=" background(.linearGradient(
      colors: [.teal, .white],
      startPoint: .top,
      endPoint: .bottom
    ))" >

     <VStack  style="containerRelativeFrame(
            [.horizontal]) ">
    <Spacer style="frame(height: 15)"/>
    <HStack> <Text id="p" style="foregroundStyle(Color(hue: 0.1639, saturation: 1, brightness: 1)) font(.system(size: 30, design: .serif))">Bienvenue </Text></HStack>

        <HStack><.image  url={~p"/assets/logo.png"}>
      <:success style="resizable(); frame(width: 170, height: 170) " />

    </.image></HStack>


 <Spacer style="frame(height: 20)"/>

  <Image systemName="line.3.horizontal" style="resizable() contextMenu(menuItems: :context_menu) foregroundStyle(.white) frame(width: 30, height: 20)">
  <Button template={:context_menu} :for={i <- 1..10}>Item <%= i %></Button>
</Image>



 <Spacer style="frame(height: 20)"/>

<Button phx-click="press">Test </Button>
<VStack
    id={"test"}
    :if={@show}
    style='sheet(isPresented: attr("presented"), content: :content)'
    presented={@show}
    phx-change={nil}
  >
    <VStack style="presentationDetents([.medium, .large]) presentationBackground(.ultraThinMaterial) presentationDragIndicator(.visible) " template="content">
    test
    </VStack>
  </VStack>




<LiveForm
   id="my-form"
    phx-change="changed"

    >

    <HStack><Image systemName="magnifyingglass"/><TextField name="test" style=" frame(width: 280, height: 14) padding(10) textFieldStyle(.plain) background(content: :border2) overlay(content: :border)
              "> <Text>Rechercher une commune </Text><RoundedRectangle cornerRadius="20" style=" stroke(.white, lineWidth: 2)" template="border"> </RoundedRectangle>
              <RoundedRectangle cornerRadius="20" style="fill(.white  )" template="border2"> </RoundedRectangle></TextField></HStack>
           <%= for text <- @slist do %>

           <.link navigate={~p"/#{text.id}"} style={[
        "buttonStyle(.borderedProminent)",
        "controlSize(.medium)",
        "listRowInsets(EdgeInsets())",
        "listRowBackground(:empty)"
      ]}><Text style="frame(width: 250) "><%= text.name %></Text></.link>
    <% end %>

  </LiveForm>

<LiveForm
   id="my-form2"
    phx-change="changed2"

    >
    <Spacer style="frame(height: 25)"/>
   <HStack><Image systemName="magnifyingglass"/><TextField name="test" style=" frame(width: 280, height: 14) padding(10) textFieldStyle(.plain) background(content: :border2) overlay(content: :border)
              "> <Text>Rechercher une communauté de communes </Text><RoundedRectangle cornerRadius="20" style=" stroke(.white, lineWidth: 2)" template="border"> </RoundedRectangle>
              <RoundedRectangle cornerRadius="20" style="fill(.white  )" template="border2"> </RoundedRectangle></TextField></HStack>
  </LiveForm>



         <LiveForm
   id="my-form3"
    phx-change="changed3"

    >
    <Spacer style="frame(height: 25)"/>
   <HStack><Image systemName="magnifyingglass"/><TextField name="test" style=" frame(width: 280, height: 14) padding(10) textFieldStyle(.plain) background(content: :border2) overlay(content: :border)
              "> <Text>Rechercher un département </Text><RoundedRectangle cornerRadius="20" style=" stroke(.white, lineWidth: 2)" template="border"> </RoundedRectangle>
              <RoundedRectangle cornerRadius="20" style="fill(.white  )" template="border2"> </RoundedRectangle></TextField></HStack>
  </LiveForm>



         <LiveForm
   id="my-form4"
    phx-change="changed4"

    >
    <Spacer style="frame(height: 25)"/>
     <HStack><Image systemName="magnifyingglass"/><TextField name="test" style=" frame(width: 280, height: 14) padding(10) textFieldStyle(.plain) background(content: :border2) overlay(content: :border)
              "> <Text>Rechercher une région </Text><RoundedRectangle cornerRadius="20" style=" stroke(.white, lineWidth: 2)" template="border"> </RoundedRectangle>
              <RoundedRectangle cornerRadius="20" style="fill(.white  )" template="border2"> </RoundedRectangle></TextField></HStack>
  </LiveForm>

         <LiveForm
   id="my-form5"
    phx-change="changed5"

    ><Spacer style="frame(height: 25)"/>
  <HStack><Image systemName="magnifyingglass"/><TextField name="test" style=" frame(width: 280, height: 14) padding(10) textFieldStyle(.plain) background(content: :border2) overlay(content: :border)
              "> <Text>Rechercher un pays </Text><RoundedRectangle cornerRadius="20" style=" stroke(.white, lineWidth: 2)" template="border"> </RoundedRectangle>
              <RoundedRectangle cornerRadius="20" style="fill(.white  )" template="border2"> </RoundedRectangle></TextField></HStack>
  </LiveForm>



    <Spacer style="frame(height: 25)"/>
   <.link navigate={~p"/"} style=" buttonStyle(.borderedProminent)
    buttonBorderShape(.roundedRectangle(radius: 20))">
    <Text style="frame(width: 300)"> L'assemblée européene </Text> </.link>

    <Spacer style="frame(height: 50)"/>
    <HStack><.link> Données de la modération </.link> <Spacer style="frame(width: 30)"/> <.link> Nous contacter </.link> </HStack>

    </VStack>


    </ScrollView>

        </VStack>

      <VStack tag="2" style="tabItem(:item)">
        <Label
          template="item"
          systemImage="info.square"
        >
          A propos
        </Label>


     test
      </VStack>
       <VStack tag="3" style="tabItem(:item)">
        <Label
          template="item"
          systemImage="eye.slash"
        >
          Confidentialité
        </Label>

     test
      </VStack>


    </TabView>








    </VStack>







"""
  end



end
