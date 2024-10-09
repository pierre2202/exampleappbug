defmodule DemoWeb.VoteLive.SwiftUI do
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
      <Spacer style="frame(height: 10)"/>
             <HStack style="navigationBarBackButtonHidden(true)  ">
                 <.link navigate={~p"/"} style="buttonStyle(.borderless)"><.image url={~p"/assets/logo144.png"}>
      <:success style="resizable(); frame(width: 50, height: 50)" />
    </.image></.link> <Spacer style="frame(width: 50)"/><Text style="font(.system(size: 16, design: .serif))"> Ste marie de ré</Text><Spacer style="frame(width: 50)"/>  <.link navigate={~p"/search"}style=" buttonStyle(.borderless)  "><Image systemName="magnifyingglass" style="resizable() foregroundStyle(.white) frame(width: 20, height: 20)" /></.link>
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






     <TabView>

         <VStack tag="1" style="tabItem(:item)">
        <Label
          template="item"
          systemImage="envelope"
        >
         Vote
        </Label>

         <VStack style="background(.linearGradient(
      colors: [.teal, .white],
      startPoint: .top,
      endPoint: .bottom
    )) ">
     <Spacer style="frame(height: 15)"/>





       <HStack>  <Spacer style="frame(width: 15)"/><.link navigate={~p"/"} style={[
        "buttonStyle(.borderedProminent)",
        "controlSize(.regular)",
        "listRowInsets(EdgeInsets())",
        "listRowBackground(:empty)"
    ]}><Text style="font(.system(size: 12, design: .serif))">Nouveau projet</Text></.link>

        <Spacer style="frame(width: 40)"/>
        <.link navigate={~p"/"} style={[
        "buttonStyle(.borderedProminent)",
        "controlSize(.regular)",
        "listRowInsets(EdgeInsets())",
        "listRowBackground(:empty)"

    ]}>

    <Text style="font(.system(size: 12, design: .serif))">Projets en débat</Text></.link><Spacer style="frame(width: 15)"/></HStack>
 <Spacer style="frame(height: 20)" />
      <HStack><Text style="bold()"> Projets et nominations en vote </Text> <Spacer style="frame(width: 15)"/>      <Menu style="frame(width: 100)">
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
       <List
      id="cookbook"
      style={[
        "listStyle(.plain)",
        "frame(height: 280)"]}
    >
    <Section  >

              <HStack template="header">
        <Text style="frame(width: 180) bold() font(.system(size: 12, design: .serif))">
          Titre</Text><Text style="frame(width: 100) bold() font(.system(size: 12, design: .serif))"> Résultat</Text>
           <Text style="bold() font(.system(size: 12, design: .serif))">Date debut de vote </Text>
          <Spacer />

        </HStack>
        <.link
        style={[

        "listRowInsets(EdgeInsets())",
        "listRowBackground(:empty)"

    ]}

          navigate={}
        >
          <Label >
            <VStack>
              <Text style="frame(width: 195) font(.system(size: 16, design: .serif))"> DL D KDLMKQS KLMDS LK dksqldkslmdqkqmdlc dkcklmdkcv  dsklq sDKLMDM   DS KLQd mks k</Text>

            </VStack>


          </Label>
            <VStack>
                <Text style="frame(width: 90) font(.system(size: 16, design: .serif))"> 1000</Text>
            </VStack>
             <VStack>
                 <Text style="frame(width: 90) font(.system(size: 16, design: .serif))"> 01/02/2024</Text>
            </VStack>
        </.link>
         <.link
              style={[
        "listRowInsets(EdgeInsets())",
        "listRowBackground(:empty)"

    ]}
          navigate={}
        >
          <Label>
            <VStack>
              <Text style="frame(width: 195)  font(.system(size: 16, design: .serif))" >Instaurer une démocratie directe participative au niveau de la commune jusqu à l'europe</Text>

            </VStack>


          </Label>
           <VStack>
                <Text style="frame(width: 90) font(.system(size: 16, design: .serif))"> 1000</Text>
            </VStack>
             <VStack>
                 <Text style="frame(width: 90) font(.system(size: 16, design: .serif))"> 01/01/2024</Text>
            </VStack>
        </.link>

      </Section>
      </List>
      <.link navigate={~p"/"} style={[
        "buttonStyle(.borderedProminent)",
        "controlSize(.regular)",
        "listRowInsets(EdgeInsets())",
        "listRowBackground(:empty)"
    ]}><Text style="font(.system(size: 12, design: .serif))" >Archives de la localité </Text></.link>
    <Spacer style="frame(height: 20)"/>

     <HStack> <Text style="bold()"> Résultat des deux derniers votes </Text><Spacer style="frame(width: 15)"/>      <Menu style="frame(width: 100)">
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



       <List
      id="cookbook2"
      style={[
        "listStyle(.plain)",
        "frame(height: 250)"]}
    >
    <Section  >
        <HStack template="header">
        <Text style="frame(width: 180) bold() font(.system(size: 12, design: .serif))">
          Titre</Text><Text style="frame(width: 100) bold() font(.system(size: 12, design: .serif))"> Résultat</Text>
           <Text style="bold() font(.system(size: 12, design: .serif))">Date fin de vote </Text>
          <Spacer />

        </HStack>
        <.link
        style={[

        "listRowInsets(EdgeInsets())",
        "listRowBackground(:empty)"

    ]}

          navigate={}
        >
          <Label >
            <VStack>
              <Text style="frame(width: 195) font(.system(size: 16, design: .serif))"> DL D KDLMKQS KLMDS LK dksqldkslmdqkqmdlc dkcklmdkcv  dsklq sDKLMDM   DS KLQd mks k</Text>

            </VStack>


          </Label>
            <VStack>
                <Text style="frame(width: 90) font(.system(size: 16, design: .serif))"> Refusé</Text>
            </VStack>
             <VStack>
                 <Text style="frame(width: 90) font(.system(size: 16, design: .serif))"> 01/02/2024</Text>
            </VStack>
        </.link>
         <.link
              style={[
        "listRowInsets(EdgeInsets())",
        "listRowBackground(:empty)"

    ]}
          navigate={}
        >
          <Label>
            <VStack>
              <Text style="frame(width: 195)  font(.system(size: 16, design: .serif))" >Instaurer une démocratie directe participative au niveau de la commune jusqu à l'europe</Text>

            </VStack>


          </Label>
           <VStack>
                <Text style="frame(width: 90) font(.system(size: 16, design: .serif))"> Accepté</Text>
            </VStack>
             <VStack>
                 <Text style="frame(width: 90) font(.system(size: 16, design: .serif))"> 01/01/2024</Text>
            </VStack>
        </.link>

      </Section>
      </List>
    </VStack>
     </VStack>
       <VStack tag="2" style="tabItem(:item)">
        <Label
          template="item"
          systemImage="c.circle"
        >
         Situation comptable
        </Label>

         <ScrollView style="background(.linearGradient(
      colors: [.teal, .white],
      startPoint: .top,
      endPoint: .bottom)) ">
     <VStack style="containerRelativeFrame([.horizontal])">
     <Spacer style="frame(height: 10)" />
      <HStack><Text style=" foregroundStyle(.indigo) bold() font(.system(size: 16, design: .serif))"> Résumé de la situation comptable </Text></HStack>
      <Divider style="frame(minHeight: 1) overlay(.white)"/>
       <Spacer style="frame(height: 20)" />
      <Text style=" foregroundStyle(.gray) bold() font(.system(size: 14, design: .serif))">  Pour l'année 2023</Text>
         <Spacer style="frame(height: 10)" />
        <HStack><Text style=" foregroundStyle(.gray) bold() font(.system(size: 14, design: .serif))"> Total des recettes annuelles</Text>  <Spacer style="frame(width: 10)" />
        <Text style=" foregroundStyle(.white) bold() font(.system(size: 14, design: .serif))"> 10 000 000 € </Text></HStack>
          <Spacer style="frame(height: 10)" />
        <HStack><Text style=" foregroundStyle(.gray) bold() font(.system(size: 14, design: .serif))"> Total des dépenses annuelles </Text>  <Spacer style="frame(width: 10)" />
        <Text style=" foregroundStyle(.white) bold() font(.system(size: 14, design: .serif))"> 10 000 000 € </Text></HStack>
               <Spacer style="frame(height: 10)" />
        <HStack><Text style=" foregroundStyle(.gray) bold() font(.system(size: 14, design: .serif))"> Total des dettes </Text>  <Spacer style="frame(width: 10)" />
        <Text style=" foregroundStyle(.white) bold() font(.system(size: 14, design: .serif))"> 10 000 000 € </Text></HStack>
             <HStack><Text style=" foregroundStyle(.gray) bold() font(.system(size: 14, design: .serif))"> Coût annuel des interêts de la dette</Text>  <Spacer style="frame(width: 10)" />
        <Text style=" foregroundStyle(.white) bold() font(.system(size: 14, design: .serif))"> 300 000 € </Text></HStack>

                <Spacer style="frame(height: 10)" />
        <HStack><Text style=" foregroundStyle(.gray) bold() font(.system(size: 14, design: .serif))"> Trésorerie nette annuelle </Text>  <Spacer style="frame(width: 10)" />
        <Text style=" foregroundStyle(.white) bold() font(.system(size: 14, design: .serif))"> 10 000 € </Text></HStack>
          <Spacer style="frame(height: 10)" />
     <HStack style="frame(width: 400)"><Text style=" foregroundStyle(.gray) bold() font(.system(size: 14, design: .serif))"> Dernière édition par l'administrateur </Text>  <Spacer style="frame(width: 10)" />
              <Text style=" foregroundStyle(.white) bold() font(.system(size: 14, design: .serif))"> Pierre Auriol le 01/01/2024</Text>

  </HStack>
             <Text style=" foregroundStyle(.gray) bold() font(.system(size: 12, design: .serif))"> (Grâce aux données du service comptable de la localité)</Text>

                      <Spacer style="frame(height: 10)" />
                    <Divider style="frame(minHeight: 1) overlay(.white)"/>
                       <Spacer style="frame(height: 10)" />
                <HStack><Text style=" foregroundStyle(.gray) bold() font(.system(size: 14, design: .serif))"> Total des recettes  en cours (2024) votées par les projets</Text>  <Spacer style="frame(width: 10)" />
        <Text style=" foregroundStyle(.white) bold() font(.system(size: 14, design: .serif))"> 1 000 000 € </Text></HStack>
                     <Spacer style="frame(height: 10)" />
                             <HStack><Text style=" foregroundStyle(.gray) bold() font(.system(size: 14, design: .serif))"> Total des dépenses en cours (2024) votées par les projets</Text>  <Spacer style="frame(width: 10)" />
        <Text style=" foregroundStyle(.white) bold() font(.system(size: 14, design: .serif))"> 1 000 000 € </Text></HStack>
                     <Spacer style="frame(height: 10)" />
                     <Text style=" foregroundStyle(.gray) bold() font(.system(size: 14, design: .serif))">(Mise à jour automatique à chaque projet accepté)</Text>

                        <Spacer style="frame(height: 10)" />
                       <Divider style="frame(minHeight: 1) overlay(.white)"/>



      </VStack>

    </ScrollView>
    </VStack>

    </TabView>

    </VStack>







    """
  end







end
