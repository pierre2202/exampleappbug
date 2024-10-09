defmodule DemoWeb.DemoWeb.DemoWeb.ProfilLive.SwiftUI do
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
    </.image></.link> <Spacer style="frame(width: 30)"/><Text style="frame(width: 150) font(.system(size: 15, design: .serif))">Profil</Text><Spacer style="frame(width: 30)"/>  <.link navigate={~p"/search"}style=" buttonStyle(.borderless)  "><Image systemName="magnifyingglass" style="resizable() foregroundStyle(.white) frame(width: 20, height: 20)" /></.link>
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


         <VStack style="background(.linearGradient(
      colors: [.teal, .white],
      startPoint: .top,
      endPoint: .bottom
    )) ">

    <Spacer style="frame(height: 5)" />

   <ScrollView>


         <LiveForm
   id="my-form4"
    phx-change="changed4"

    >
    <Spacer style="frame(height: 20)"/>
     <HStack><Image systemName="magnifyingglass"/><TextField name="test" style=" frame(width: 200, height: 10) padding(10) background(content: :border2) overlay(content: :border)
              "> <Text style="font(.system(size: 12)) bold()" >Rechercher un citoyen</Text><RoundedRectangle cornerRadius="20" style=" stroke(.white, lineWidth: 2)" template="border"> </RoundedRectangle>
              <RoundedRectangle cornerRadius="20" style="fill(.white  )" template="border2"> </RoundedRectangle></TextField></HStack>
  </LiveForm>

       <Spacer style="frame(height: 20)"/>


         <Spacer style="frame(width: 15)"/>

    <HStack><Spacer style="frame(width: 20)"/> <Text style="font(.system(size: 12)) bold() foregroundStyle(.gray)"> Nom et prénom</Text> <Text style="font(.system(size: 14)) bold() foregroundStyle(.white)">Auriol Pierre-Louis</Text></HStack>
          <Spacer style="frame(height: 10)"/>
    <HStack><Spacer style="frame(width: 20)"/> <Text style="font(.system(size: 12)) bold() foregroundStyle(.gray)">Email </Text> <Text style="font(.system(size: 14)) bold() foregroundStyle(.white)">pierrelouis_22@hotmail.fr</Text></HStack>
               <Spacer style="frame(height: 10)"/>
    <HStack><Spacer style="frame(width: 20)"/> <Text style="font(.system(size: 12)) bold() foregroundStyle(.gray)">Commune </Text> <Text style="font(.system(size: 14)) bold() foregroundStyle(.white)">Ste Marie de ré</Text></HStack>
                <Spacer style="frame(height: 10)"/>
    <HStack><Spacer style="frame(width: 20)"/> <Text style="font(.system(size: 12)) bold() foregroundStyle(.gray)">Code postal </Text> <Text style="font(.system(size: 14)) bold() foregroundStyle(.white)">17740</Text></HStack>
                   <Spacer style="frame(height: 10)"/>
    <HStack><Spacer style="frame(width: 20)"/> <Text style="font(.system(size: 12)) bold() foregroundStyle(.gray)">Age </Text><Text style="font(.system(size: 14)) bold() foregroundStyle(.white)"> 34</Text></HStack>
               <Spacer style="frame(height: 10)"/>
               <Divider />
                 <Spacer style="frame(height: 10)"/>
                <HStack><Spacer style="frame(width: 20)"/> <Text style="font(.system(size: 12)) bold() foregroundStyle(.gray)">Role </Text><Text style="font(.system(size: 14)) bold() foregroundStyle(.white)"> Administrateur</Text></HStack>
                         <HStack>
                          <LiveForm
   id="my-form"
    phx-change="changed">
        <Text style="font(.system(size: 12)) bold() foregroundStyle(.gray)"> Refuser la modération par manque de temps</Text><Toggle style=" frame(width: 25, height: 16) scaleEffect(0.9)" name="igeneral" isOn={false}> </Toggle> </LiveForm></HStack>
                   <Spacer style="frame(height: 10)"/>
                <Divider />
                   <Spacer style="frame(height: 10)"/>
            <HStack><Spacer style="frame(width: 3)"/> <Text style="frame(width: 100) font(.system(size: 12)) bold() foregroundStyle(.gray)">Etudes, compétences et métier </Text><Text style="font(.system(size: 14)) bold() foregroundStyle(.white)"> Economie, gestion, comptabilité, programmeur frontend et backend</Text></HStack>
             <Divider />
         <Spacer style="frame(height: 20)"/>
               <HStack><Text style="foregroundStyle(.gray) bold() font(.system(size: 12))"> Donner son soutien pour la modération </Text> <Button style=" buttonStyle(.borderless)  "> <Image systemName="star" style="resizable() frame(width: 30, height: 30)" /></Button>  10</HStack>

                 <Spacer style="frame(height: 30)"/>
    <HStack>  <Spacer style="frame(width: 30)"/>
           <.link navigate={~p"/"} style={[
        "buttonStyle(.borderedProminent)",
        "controlSize(.regular)",
        "listRowInsets(EdgeInsets())",
        "listRowBackground(:empty)"

    ]}><Text style="font(.system(size: 14))">
      Ses soutiens</Text></.link>

        <Spacer style="frame(width: 40)"/>
        <.link navigate={~p"/"} style={[
        "buttonStyle(.borderedProminent)",
        "controlSize(.regular)",
        "listRowInsets(EdgeInsets())",
        "listRowBackground(:empty)"

    ]}><Text style="font(.system(size: 14))">
      Ses commentaires</Text></.link><Spacer style="frame(width: 15)"/></HStack>

  <Spacer style="frame(height: 15)" />



      <HStack><Text style="bold() foregroundStyle(.white)">Les projets  du  citoyen</Text> <Spacer style="frame(width: 15)"/> <Menu style="frame(width: 100)">
            <Label template="label" systemImage="line.3.horizontal.decrease.circle.fill">
            Trier
            </Label>

            <Button phx-click="clear-filter">Date</Button>
            <Button

              phx-click="filter"

            >
              Soutiens
            </Button>
               <Button

              phx-click="filter"

            >
              Titre
            </Button>
          </Menu>    </HStack>
       <List
      id="cookbook"
      style={[
        "listStyle(.plain)", ~s[frame(height: attr("height"))]
      ]}
      height={60+110*@count}
    >
    <Section  >
        <HStack template="header">
       <Text style="frame(width: 180) font(.system(size: 12, design: .serif))">
          Titre</Text><Text style=" bold() frame(width: 100) font(.system(size: 12, design: .serif)) "> Soutiens</Text><Text style=" bold() font(.system(size: 12, design: .serif))">Statut et date du passage </Text>
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



    </VStack>







    """
  end







end
