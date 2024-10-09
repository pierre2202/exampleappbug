defmodule DemoWeb.DemoWeb.ModerationLive.SwiftUI do
  use DemoNative, [:render_component, format: :swiftui]

  import DemoWeb.Components.SwiftUI

  import DemoWeb.UserLive.Components.SwiftUI




  def render(assigns, _interface) do
    ~LVN"""
                     <VStack >
    <VStack style=" background(.linearGradient(
      colors: [.blue, .teal],
      startPoint: .top,
      endPoint: .bottom
    )) ">
      <Spacer style="frame(height: 2)"/>
             <HStack style="navigationBarBackButtonHidden(true)  ">
                 <.link navigate={~p"/"} style="buttonStyle(.borderless)"><.image url={~p"/assets/logo144.png"}>
      <:success style="resizable(); frame(width: 50, height: 50)" />
    </.image></.link> <Spacer style="frame(width: 30)"/><Text style="frame(width: 150) font(.system(size: 15, design: .serif))">Modération</Text><Spacer style="frame(width: 30)"/>  <.link navigate={~p"/search"}style=" buttonStyle(.borderless)  "><Image systemName="magnifyingglass" style="resizable() foregroundStyle(.white) frame(width: 20, height: 20)" /></.link>
             <Spacer style="frame(width: 30)"/>
           <%= if @current_user == nil do %>
              <Menu style="frame(width: 50) menuStyle(.borderlessButton)" >
         <Group template="label">
         <Image systemName="line.3.horizontal" style="resizable() foregroundStyle(.white) frame(width: 30, height: 20)" />

      </Group>
           <.link navigate={~p"/users/log_in"} >
            Connexion
                 <Image systemName="arrow.right.circle"/>
          </.link>


        </Menu>
           <% end %>

        <%= if @current_user != nil do %>
         <Menu style="frame(width: 50) menuStyle(.borderlessButton)" >
         <Group template="label">
        <Image systemName="line.3.horizontal" style="resizable() frame(width: 30, height: 20) foregroundColor(.black)"/>
      </Group>

        <Section>
           <.link navigate={} >
           <HStack> Connecté avec </HStack>
            <%= @current_user.email %><Image systemName="arrow.right.circle"/></.link>
           </Section>
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
         <Spacer style="frame(width: 10)"/> </HStack>
         <Divider/>

         </VStack>
         <HStack/>
        </VStack>
               <VStack style="background(.linearGradient(
      colors: [.teal, .white],
      startPoint: .top,
      endPoint: .bottom
    )) ">

    <Spacer style="frame(height: 5)" />

   <ScrollView>
       <Spacer style="frame(height: 5)" />
   <HStack><Text style=" bold() foregroundStyle(.white)  font(.system(size: 16, design: .serif))" >Liste des projets et commentaires les plus signalés</Text><Spacer style="frame(width: 15)"/>      <Menu style="frame(width: 100)">
            <Label template="label" systemImage="line.3.horizontal.decrease.circle.fill">
            Trier
            </Label>

            <Button phx-click="clear-filter">All</Button>
            <Button

              phx-click="filter"

            >
              Soutien
            </Button>
          </Menu></HStack>
       <Spacer style="frame(height: 20)" />
    <List
      id="cookbook"
      style={[
        "listStyle(.plain)", ~s[frame(height: attr("height"))]
      ]}
      height={60+110*@count}
    >
    <Section  >
        <HStack template="header">
       <Text style="frame(width: 180) bold() font(.system(size: 12, design: .serif))">
          Titre ou début du commentaire</Text><Text style=" bold() frame(width: 100) font(.system(size: 12, design: .serif)) ">Signalements</Text><Text style=" bold() font(.system(size: 12, design: .serif))">Statut et date de creation </Text>
          <Spacer />

        </HStack>
        <.link
        style={[ "listRowInsets(EdgeInsets())",
        "listRowBackground(:empty)"]}  navigate={}
        >
          <Label >
            <VStack>
              <Text style="frame(width: 195) font(.system(size: 15, design: .serif))"><Text style="bold()  font(.system(size: 12))">Projet d'intêret géneral<Image  systemName="arrow.right"/></Text> Rénovation et amélioration du stade de football</Text>

            </VStack>


          </Label>
            <VStack>
                <Text style="frame(width: 90) font(.system(size: 15, design: .serif))"> 1000</Text>
            </VStack>
             <VStack>
                   <Text style="frame(width: 90) font(.system(size: 15, design: .serif))"> En débat</Text>
                 <Text style="frame(width: 90) font(.system(size: 15, design: .serif))"> 01/02/2024</Text>
            </VStack>
        </.link>
         <.link
        style={[ "listRowInsets(EdgeInsets())",
        "listRowBackground(:empty)"]}  navigate={}
        >
          <Label >
            <VStack>
              <Text style="frame(width: 195) font(.system(size: 15, design: .serif))"><Text style="bold()  font(.system(size: 12))">Arrêté<Image  systemName="arrow.right"/></Text> Interdire et mettre une lourde amende aux vignerons qui utilisent des baches plastiques dans leur vignoble.</Text>

            </VStack>


          </Label>
            <VStack>
                <Text style="frame(width: 90) font(.system(size: 15, design: .serif))"> 1000</Text>
            </VStack>
             <VStack>
                   <Text style="frame(width: 90) font(.system(size: 15, design: .serif))"> En débat</Text>
                 <Text style="frame(width: 90) font(.system(size: 15, design: .serif))"> 01/02/2024</Text>
            </VStack>
        </.link>

      </Section>
      </List>



   </ScrollView>

   </VStack>








    """
  end

end
