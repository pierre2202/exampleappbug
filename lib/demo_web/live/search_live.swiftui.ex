defmodule DemoWeb.SearchLive.SwiftUI do
  use DemoNative, [:render_component, format: :swiftui]

  import DemoWeb.Components.SwiftUI

  import DemoWeb.UserLive.Components.SwiftUI


  def render(assigns, _interface) do
    ~LVN"""



    <VStack style=" background(.linearGradient(
      colors: [.teal, .white],
      startPoint: .top,
      endPoint: .bottom
    ))">





      <VStack style="navigationBarBackButtonHidden(true)">
       <List
      style={["frame(height: 10)", "listStyle(.plain)",


        ~s[searchable(text: attr("searchText"), prompt: "Rechercher un projet")],
        ~s[onSubmit(of: .search, action: event("search"))]
      ]}
      searchText={@search_text}
      phx-change="search-changed"
      phx-debounce={250}
    >

    </List>
      </VStack>
    <LiveForm
   id="my-form"
    phx-change="changed"

    >
     <Text style="font(.system(size: 14, weight: .bold))"> Filtres de recherche </Text>
      <Spacer style="frame(height: 10)"/>
      <Text style=" bold() font(.system(size: 13))"> Statut</Text>
    <HStack>
        <Text style="font(.system(size: 12))"> En débat </Text><Toggle style=" frame(width: 25, height: 16) scaleEffect(0.9)" name="debat" isOn={true}> </Toggle>
        <Spacer style="frame(width: 20)"/>
        <Text style="font(.system(size: 12))"> En attente </Text> <Toggle style=" frame(width: 25, height: 16) scaleEffect(0.9)" name="attente" isOn={true}> </Toggle>
          <Spacer style="frame(width: 20)"/>
  <Text style="font(.system(size: 12))"> En vote</Text><Toggle style=" frame(width: 25, height: 16) scaleEffect(0.9)" name="vote" isOn={true}> </Toggle>
    <Spacer style="frame(width: 20)"/>
    <Text style="font(.system(size: 12))"> Archive </Text><Toggle style=" frame(width: 25, height: 16) scaleEffect(0.9)" name="archive" isOn={true}> </Toggle>  <Spacer style="frame(width: 10)"/>
   </HStack>
     <Spacer style="frame(height: 20)"/>
     <Text style=" bold() font(.system(size: 13))"> Type</Text>
       <HStack>
        <Text style="font(.system(size: 12))"> Projet d'intérêt général</Text><Toggle style=" frame(width: 25, height: 16) scaleEffect(0.9)" name="igeneral" isOn={true}> </Toggle>
        <Spacer style="frame(width: 20)"/>
        <Text style="font(.system(size: 12))">Amendement</Text> <Toggle style=" frame(width: 25, height: 16) scaleEffect(0.9)" name="amendement" isOn={true}> </Toggle>
          <Spacer style="frame(width: 20)"/>
  <Text style="font(.system(size: 12))"> Loi</Text><Toggle style=" frame(width: 25, height: 16) scaleEffect(0.9)" name="loi" isOn={true}> </Toggle>
    <Spacer style="frame(width: 20)"/>
    <Text style="font(.system(size: 12))"> Arrêté </Text><Toggle style=" frame(width: 25, height: 16) scaleEffect(0.9)" name="arrete" isOn={true}> </Toggle>  <Spacer style="frame(width: 10)"/>
   </HStack>
   <HStack>    <Text style="font(.system(size: 12))"> Traité international</Text><Toggle style=" frame(width: 25, height: 16) scaleEffect(0.9)" name="traite" isOn={true}> </Toggle>  <Spacer style="frame(width: 30)"/>
   <Text style="font(.system(size: 12))">Démission</Text><Toggle style=" frame(width: 25, height: 16) scaleEffect(0.9)" name="dem" isOn={true}> </Toggle> </HStack>

      <Spacer style="frame(height: 20)"/>
       <HStack><TextField name="test" style=" frame(width: 180 , height: 10) padding(10) background(content: :border2) overlay(content: :border)
              "> <Text style="font(.system(size: 12, weight: .bold))">Rechercher une localité </Text><RoundedRectangle cornerRadius="20" style=" stroke(.white, lineWidth: 2)" template="border"> </RoundedRectangle>
              <RoundedRectangle cornerRadius="20" style="fill(.white  )" template="border2"> </RoundedRectangle></TextField><Spacer style="frame(width: 20)"/><Text style="font(.system(size: 12, weight: .bold))"> Localités selectionnées: </Text></HStack>
      <HStack></HStack>


  </LiveForm>



    <List style="listStyle(.plain)">
     <Section  >
     <HStack template="header">
        <Text style="bold() frame(width: 230) font(.system(size: 14, design: .serif)) ">
          Titre</Text> <Text style="bold() frame(width: 230) font(.system(size: 14, design: .serif)) "> Date de création </Text>
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
              <Text style="frame(width: 250) font(.system(size: 16, design: .serif))"> DL D KDLMKQS KLMDS LK dksqldkslmdqkqmdlc dkcklmdkcv  dsklq sDKLMDM   DS KLQd mks k</Text>

            </VStack>


          </Label>

             <VStack>
                 <Text style="frame(width: 90) font(.system(size: 16, design: .serif))"> 01/02/2024</Text>
            </VStack>
        </.link>
    </Section>
    </List>

    <.link style=" buttonStyle(.borderedProminent)
    buttonBorderShape(.roundedRectangle(radius: 20))" navigate={~p"/"}> Page d'accueil </.link>

    </VStack>




    """
  end

end
