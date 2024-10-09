defmodule DemoWeb.MessagerieLive.SwiftUI do
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
             <.link navigate={~p"/"} style="buttonStyle(.borderless)"><.image url={~p"/assets/logo144.png"}>
      <:success style="resizable(); frame(width: 50, height: 50)" />
    </.image></.link><Spacer style="frame(width: 50)"/><Text style="font(.system(size: 16, design: .serif))">Messagerie</Text><Spacer style="frame(width: 100)"/>  <.link navigate={~p"/search"} style=" buttonStyle(.borderless)  "><Image systemName="magnifyingglass" style="resizable() foregroundStyle(.white) frame(width: 20, height: 20)" /></.link>
             <Spacer style="frame(width: 30)"/>

           <%= if @current_user == nil do %>
             <Menu style="frame(width: 50)">
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
        <Menu style="frame(width: 25) menuIndicator(.hidden)">
         <Group template="label">
        <Image systemName="line.3.horizontal" style="resizable() foregroundStyle(.white) frame(width: 30, height: 20)" />
      </Group>

        <Section>
           <.link navigate={} >
           <HStack> Connecté avec </HStack>
            <%= @current_user.email %><Image systemName="arrow.right.circle"/></.link>
           </Section>
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
         <Divider style="frame(minHeight: 1) overlay(.blue)"/>

         </VStack>
         <HStack/>
        </VStack>


       <TabView>

         <VStack tag="1" style="tabItem(:item)">
        <Label
          template="item"
          systemImage="mail"
        >
          Boite de reception
        </Label>
        <VStack style="containerRelativeFrame(
            [.horizontal]) background(.teal)">
             <Spacer style="frame(height: 6)"/>
       <HStack> <Spacer style="frame(width: 10)"/> <Text  style=" font(.system(size: 20)) foregroundStyle(.white)" ><Image systemName="person"/></Text><Spacer style="frame(width: 125)"/> <Text  style=" font(.system(size: 20)) foregroundStyle(.white)" ><Image systemName="calendar"/></Text>
       <Spacer style="frame(width: 100)"/><Text  style="bold() font(.system(size: 14)) foregroundStyle(.white)">Objet</Text> <Spacer style="frame(width: 35)"/>
       <Menu style="frame(width: 60)">
         <Group template="label" ><Button  style="frame(width: 50) buttonStyle(.borderedProminent)
    buttonBorderShape(.roundedRectangle(radius: 20))"><Text  style=" font(.system(size: 12))">Trier</Text></Button></Group>
         <Button>Date</Button>
         <Button> Envoyeur</Button>
         </Menu></HStack>
        <Divider style="frame(minHeight: 1) overlay(.blue)"/>

      <ScrollView style=" background(.linearGradient(
      colors: [.teal, .white],
      startPoint: .top,
      endPoint: .bottom
    ))" >

     <VStack  style="containerRelativeFrame(
            [.horizontal]) ">

                <Menu  >
         <Group template="label" >
         <HStack style="foregroundStyle(.black) "><Spacer style="frame(width: 5)"/><Text style="frame(width: 145) bold() font(.system(size: 11))"> dsqdaapierrelodqsdqsduis_22@hotmail.frdqsdsqd</Text><Spacer style="frame(width: 4)"/>
         <Text style="frame(width: 54) bold() font(.system(size: 9))"><Image systemName="envelope.open"/>
         11:34 01/02/2024</Text><Text style="frame(width: 210) bold() font(.system(size: 11))">test pour l'app démos dsqk ldmksq mdkl mdkqsl dklqsm dsq d sqdlk kdlsqkldmsqkdlmkqs dqsdk ldkqsm dklqskd</Text></HStack>


      </Group>
           <.link navigate={~p"/users/log_in"} >
            Ouvrir
                 <Image systemName="envelope.open"/>
          </.link>

                  <Menu  >
         <Group template="label" >Supprimer
                 <Image systemName="x.circle"/>
                  </Group>
              <Section> Etes-vous sûr de vouloir supprimer le message ? </Section>
             <Button role="destructive">
            Oui
                 <Image systemName="x.circle"/>
          </Button>
            <Button >
            Non
                 <Image systemName="x.circle"/>
          </Button>

         </Menu>



        </Menu>
       <Divider/>

                <Menu  >
         <Group template="label" >
         <HStack style="foregroundStyle(.black) "><Spacer style="frame(width: 6)"/><Text style="frame(width: 145) bold() font(.system(size: 11))">pierrelodqduis_22@hotmail.frdqsdsqd</Text><Spacer style="frame(width: 4)"/>
         <Text style="frame(width: 54) bold() font(.system(size: 9))"><Image systemName="envelope.open"/>
         11:34 01/02/2024</Text><Text style="frame(width: 210) bold() font(.system(size: 11))">test pour l'app démos dsqk ldmksq mdkl mdkqsl dklqsm dsq d sqdlk kdlsqkldmsqkdlmkqs dqsdk ldkqsm dklqskd</Text></HStack>


      </Group>
           <.link navigate={~p"/users/log_in"} >
            Ouvrir
                 <Image systemName="envelope.open"/>
          </.link>

                  <Menu  >
         <Group template="label" >Supprimer
                 <Image systemName="x.circle"/>
                  </Group>
              <Section> Etes-vous sûr de vouloir supprimer le message ? </Section>
             <Button role="destructive">
            Oui
                 <Image systemName="x.circle"/>
          </Button>
            <Button >
            Non
                 <Image systemName="x.circle"/>
          </Button>

         </Menu>



        </Menu>




    <Spacer style="frame(height: 20)"/>


    </VStack>
    </ScrollView>
    </VStack>
     </VStack>
       <VStack tag="2" style="tabItem(:item)">
        <Label
          template="item"
          systemImage="paperplane"
        >
          Messages envoyés
        </Label>

     test
      </VStack>

       <VStack tag="3" style="tabItem(:item)">
        <Label
          template="item"
          systemImage="square.and.pencil"
        >
          Nouveau message
        </Label>
           <ScrollView style=" background(.linearGradient(
      colors: [.teal, .white],
      startPoint: .top,
      endPoint: .bottom
    ))" >

     <VStack  style="containerRelativeFrame(
            [.horizontal]) ">
                 <Spacer style="frame(height: 20)"/>
             <HStack><Spacer style="frame(width: 200)"/>  <Button  style="frame(width: 200) buttonStyle(.borderedProminent)
    buttonBorderShape(.roundedRectangle(radius: 20))"><Text  style=" font(.system(size: 12))">Enregistrer dans les brouillons</Text></Button></HStack>

<Spacer style="frame(height: 20)"/>
                <HStack><Image systemName="magnifyingglass"/><TextField name="test" style=" frame(width: 220, height: 10) padding(10) background(content: :border2) overlay(content: :border)
              "> <Text>Recherche un destinataire </Text><RoundedRectangle cornerRadius="20" style=" stroke(.white, lineWidth: 2)" template="border"> </RoundedRectangle>
              <RoundedRectangle cornerRadius="20" style="fill(.white  )" template="border2"> </RoundedRectangle></TextField><Text style="foregroundStyle(.gray) bold() font(.system(size: 15))">Destinataires :</Text></HStack>
           <HStack> <Text style="foregroundStyle(.black) bold() font(.system(size: 12))"> pierre@hotmai.fr </Text><Button><Image systemName="x.circle" style="foregroundStyle(.red)" /></Button></HStack>
          <Spacer style="frame(height: 20)"/>
                     <LiveForm
   id="my-form4" >
             <Text style="foregroundStyle(.gray) bold() font(.system(size: 14))"> Objet </Text>
              <HStack><TextField name="test2" style=" frame(width: 380, height: 14) padding(10) background(content: :border2) overlay(content: :border)
              "> <Text ></Text><RoundedRectangle cornerRadius="20" style=" stroke(.white, lineWidth: 2)" template="border"> </RoundedRectangle>
              <RoundedRectangle cornerRadius="20" style="fill(.white  )" template="border2"> </RoundedRectangle></TextField></HStack>




           <Text style="foregroundStyle(.gray) bold() font(.system(size: 14))">Message </Text>
            <TextEditor name="test" style="  frame(width: 370, height: 240) padding(4)  background(content: :border2) overlay(content: :border)
                " text="dsqdqdsd"> dsqkdqkmdl<RoundedRectangle cornerRadius="20" style=" stroke(.white, lineWidth: 5)" template="border">xcxwcwc </RoundedRectangle>
             <RoundedRectangle cornerRadius="20" style="fill(.white)" template="border2"></RoundedRectangle> </TextEditor>



             <Menu style="frame(width: 60)">
         <Group template="label" ><Button  style="frame(width: 200) buttonStyle(.borderedProminent)
    buttonBorderShape(.roundedRectangle(radius: 20))"><Text  style=" font(.system(size: 16))">Envoyer</Text></Button></Group>
        <Section> Êtes-vous sûr de vouloir envoyer ce message ? </Section> <Button>Date</Button>
         <Button>Oui</Button>
          <Button role="destructive"> Non</Button>
         </Menu>
         </LiveForm>




    </VStack>

            </ScrollView>


      </VStack>
         <VStack tag="3" style="tabItem(:item)">
        <Label
          template="item"
          systemImage="figure.2"
        >
          Contacts
        </Label>

     test
      </VStack>


    </TabView>









    """
   end

end
