defmodule DemoWeb.DebatLive.SwiftUI do
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
             <HStack style="navigationBarBackButtonHidden(true)  "><Spacer style="frame(width: 10)"/>
                 <.link navigate={~p"/"} style="buttonStyle(.borderless)"><.image url={~p"/assets/logo144.png"}>
      <:success style="resizable(); frame(width: 50, height: 50)" />
    </.image></.link> <Spacer style="frame(width: 20)"/><Text style="font(.system(size: 14, design: .serif))"> Ste Marie de ré</Text><Spacer style="frame(width: 50)"/>  <.link navigate={~p"/search"}style=" buttonStyle(.borderless)  "><Image systemName="magnifyingglass" style="resizable() foregroundStyle(.white) frame(width: 20, height: 20)" /></.link>
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

      <HStack><Text style="bold() foregroundStyle(.white)">Nominations en débat </Text> <Spacer style="frame(width: 15)"/>     </HStack>
       <List
      id="cookbook"
      style={[
        "listStyle(.plain)", ~s[frame(height: attr("height"))]
      ]}
      height={60+100*@count}
    >
    <Section  >
        <HStack template="header">
       <Text style="frame(width: 180) font(.system(size: 12, design: .serif))">
          Titre</Text><Text style=" bold() frame(width: 100) font(.system(size: 12, design: .serif)) "> Soutiens</Text><Text style=" bold() font(.system(size: 12, design: .serif))">Passage en débat </Text>
          <Spacer />

        </HStack>
        <.link
        style={[ "listRowInsets(EdgeInsets())",
        "listRowBackground(:empty)"]}  navigate={}
        >
          <Label >
            <VStack>
              <Text style="frame(width: 195) font(.system(size: 15, design: .serif))"> DL D KDLMKQS KLMDS LK dksqldkslmdqkqmdlc dkcklmdkcv  dsklq sDKLMDM   DS KLQd mks k</Text>

            </VStack>


          </Label>
            <VStack>
                <Text style="frame(width: 90) font(.system(size: 15, design: .serif))"> 1000</Text>
            </VStack>
             <VStack>
                 <Text style="frame(width: 90) font(.system(size: 15, design: .serif))"> 01/02/2024</Text>
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
              <Text style="frame(width: 195)  font(.system(size: 15, design: .serif))" >Instaurer une démocratie directe participative au niveau de la commune jusqu à l'europe</Text>

            </VStack>


          </Label>
           <VStack>
                <Text style="frame(width: 90) font(.system(size: 15, design: .serif))"> 1000</Text>
            </VStack>
             <VStack>
                 <Text style="frame(width: 90) font(.system(size: 15, design: .serif))"> 01/01/2024</Text>
            </VStack>
        </.link>

      </Section>
      </List>

    </ScrollView>

     <HStack> <Text style="bold() foregroundStyle(.white)"> Projets en débat ou attentes </Text><Spacer style="frame(width: 15)"/>      <Menu style="frame(width: 100)">
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
          </Menu></HStack>


      <List
      id="cookbook2"
      style={[
        "listStyle(.plain)", "frame(height: 400)"
        ]}
    >
    <Section  >
        <HStack template="header">
        <Text style="frame(width: 180) font(.system(size: 12, design: .serif))">
          Titre</Text><Text style=" bold() frame(width: 100) font(.system(size: 12, design: .serif)) "> Soutiens</Text><Text style=" bold() font(.system(size: 12, design: .serif))">Passage en débat </Text>
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
              <Text style="frame(width: 195) font(.system(size: 15, design: .serif))"> DL D KDLMKQS KLMDS LK dksqldkslmdqkqmdlc dkcklmdkcv  dsklq sDKLMDM   DS KLQd mks k</Text>

            </VStack>


          </Label>
            <VStack>
                <Text style="frame(width: 90) font(.system(size: 15, design: .serif))"> 22 000</Text>
            </VStack>
             <VStack>
                 <Text style="frame(width: 90) font(.system(size: 15, design: .serif))"> 01/02/2024</Text>
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
              <Text style="frame(width: 195)  font(.system(size: 15, design: .serif))" >Instaurer une démocratie directe participative au niveau de la commune jusqu à l'europe</Text>

            </VStack>


          </Label>
           <VStack>
                <Text style="frame(width: 90) font(.system(size: 15, design: .serif))"> 1222</Text>
            </VStack>
             <VStack>
                 <Text style="frame(width: 90) font(.system(size: 15, design: .serif))"> 01/01/2024</Text>
            </VStack>
        </.link>
          <.link
        style={[

        "listRowInsets(EdgeInsets())",
        "listRowBackground(:empty)"

    ]}

          navigate={}
        >
          <Label >
            <VStack>
              <Text style="frame(width: 195) font(.system(size: 15, design: .serif))"> DL D KDLMKQS KLMDS LK dksqldkslmdqkqmdlc dkcklmdkcv  dsklq sDKLMDM   DS KLQd mks k</Text>

            </VStack>


          </Label>
            <VStack>
                <Text style="frame(width: 90) font(.system(size: 15, design: .serif))"> 200</Text>
            </VStack>
             <VStack>
                 <Text style="frame(width: 90) font(.system(size: 15, design: .serif))"> 01/02/2024</Text>
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
              <Text style="frame(width: 195)  font(.system(size: 15, design: .serif))" >Instaurer une démocratie directe participative au niveau de la commune jusqu à l'europe</Text>

            </VStack>


          </Label>
           <VStack>
                <Text style="frame(width: 90) font(.system(size: 15, design: .serif))"> 111</Text>
            </VStack>
             <VStack>
                 <Text style="frame(width: 90) font(.system(size: 15, design: .serif))"> 01/01/2024</Text>
            </VStack>
        </.link>
          <.link
        style={[

        "listRowInsets(EdgeInsets())",
        "listRowBackground(:empty)"

    ]}

          navigate={}
        >
          <Label >
            <VStack>
              <Text style="frame(width: 195) font(.system(size: 15, design: .serif))"> DL D KDLMKQS KLMDS LK dksqldkslmdqkqmdlc dkcklmdkcv  dsklq sDKLMDM   DS KLQd mks k</Text>

            </VStack>


          </Label>
            <VStack>
                <Text style="frame(width: 90) font(.system(size: 15, design: .serif))"> 20</Text>
            </VStack>
             <VStack>
                 <Text style="frame(width: 90) font(.system(size: 15, design: .serif))"> 01/02/2024</Text>
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
              <Text style="frame(width: 195)  font(.system(size: 15, design: .serif))" >Instaurer une démocratie directe participative au niveau de la commune jusqu à l'europe</Text>

            </VStack>


          </Label>
           <VStack>
                <Text style="frame(width: 90) font(.system(size: 15, design: .serif))"> 2</Text>
            </VStack>
             <VStack>
                 <Text style="frame(width: 90) font(.system(size: 15, design: .serif))"> 01/01/2024</Text>
            </VStack>
        </.link>


      </Section>
      </List>
    </VStack>



    </VStack>







    """
  end







end
