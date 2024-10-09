defmodule DemoWeb.DemoWeb.ShowLive.SwiftUI do
  use DemoNative, [:render_component, format: :swiftui]

  import DemoWeb.Components.SwiftUI

  import DemoWeb.UserLive.Components.SwiftUI


  def render(assigns, interface) do
    target = Map.get(interface, "target", "ios")
    assigns = assign(assigns, :target, target)
      ~LVN"""
      <VStack style=" background(.linearGradient(
      colors: [.blue, .teal],
      startPoint: .top,
      endPoint: .bottom
    )) ">
     <Spacer style="frame(height: 3)"/>

             <HStack><Spacer style="frame(width: 30)"/>
                 <.link navigate={~p"/"} style="buttonStyle(.borderless)"><.image url={~p"/assets/logo144.png"}>
      <:success style="resizable(); frame(width: 40, height: 35)" />
    </.image></.link><Spacer style="frame(width: 40)"/><Text style="font(.system(size: 20, design: .serif))">Projet</Text><Spacer style="frame(width: 100)"/>  <.link navigate={~p"/search"} style=" buttonStyle(.borderless)  "><Image systemName="magnifyingglass" style="resizable() foregroundStyle(.white) frame(width: 20, height: 20)" /></.link>
             <Spacer style="frame(width: 30)"/>
           <%= if @current_user == nil do %>
              <Menu style="frame(width: 50)" >
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
        <Menu>
         <Group template="label">
        <Image systemName="line.3.horizontal" style="resizable() frame(width: 30, height: 20) foregroundColor(.black)"/>
      </Group>

        <Section>
                <.link navigate={} >
           Modération <Image systemName="arrow.right.circle"/></.link>

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
         <Spacer style="frame(width: 30)"/> </HStack>
         <Divider/>

         </VStack>
         <HStack/>






    <VStack>
     <TabView style={[~s[toolbarBackground(.indigo, for: .tabBar)], ~s[toolbarBackground(.visible, for: .tabBar)] ]} >
         <VStack style="tabItem(:item)">
        <Label

          template="item"
          systemImage="book.pages">
          Projet
           </Label>
            <ScrollView  style="background(.linearGradient(
      colors: [.teal, .white],
      startPoint: .top,
      endPoint: .bottom
    ))">





    <VStack>
    <Spacer style="frame(height: 10)"/>


    <HStack><Spacer style="frame(width: 20)"/> <Text style="font(.system(size: 12)) bold() foregroundStyle(.gray)"> Type :</Text> Loi</HStack>
     <HStack><Text style="bold() font(.system(size: 12)) foregroundStyle(.gray)"> Proposé par : </Text> <Spacer style="frame(width: 15)"/>
      <.link navigate={~p"/"}  style={[
        "buttonStyle(.borderedProminent)",
        "controlSize(.small)",
        "listRowInsets(EdgeInsets())",
        "listRowBackground(:empty)"]} ><Text> dupont</Text></.link> <Spacer style="frame(width: 15)"/><Text style="bold() font(.system(size: 12)) foregroundStyle(.gray)"> Création : </Text> 01/02/24</HStack>
       <HStack><Text style="bold() font(.system(size: 12)) foregroundStyle(.gray)"> Collaborteurs(trices) : </Text> <Spacer style="frame(width: 15)"/>
     <.link :for={user <- ["test", "test2"]} navigate={~p"/"}  style={[
        "buttonStyle(.borderedProminent)",
        "controlSize(.small)",
        "listRowInsets(EdgeInsets())",
        "listRowBackground(:empty)"]} ><Text><%=user%></Text></.link></HStack>
      <HStack><Text style="bold() font(.system(size: 12)) foregroundStyle(.gray)"> Localité : </Text> <Spacer style="frame(width: 15)"/>
     <Text> Ste Marie de Ré</Text> <Spacer style="frame(width: 30)"/><Text style="bold() font(.system(size: 12)) foregroundStyle(.gray)"> Statut : </Text> <Spacer style="frame(width: 15)"/>
     <Text> En débat</Text></HStack>

       <Divider/>
     <Spacer style="frame(height: 20)"/>
           <HStack><Text style="foregroundStyle(.gray) bold() font(.system(size: 12))"> Marque-page </Text> <Button style=" buttonStyle(.borderless)  "> <Image systemName="bookmark" style="resizable() frame(width: 20, height: 30)" /></Button><Spacer style="frame(width: 200)"/></HStack>


    <HStack><Text style="bold()  font(.system(size: 12)) foregroundStyle(.gray)" >Titre :</Text> <Spacer style="frame(width: 15)"/><Text style="font(.system(size: 26, design: .serif))"> dsqlmdldmsqkldmsqkdlmkldqsmk </Text></HStack>
    <Spacer style="frame(height: 10)"/>
    <Text style="bold() font(.system(size: 12)) foregroundStyle(.gray)"> Description brève : </Text>
    <HStack>
     <Text> dsq ldsk dLMKD SQ dkdsmlq kdlm kdlmsqk DK smqk dksqlm KDLMS KDMKq k dmqs KD qkd dqs</Text></HStack>
      <Spacer style="frame(height: 10)"/>
       <HStack><Text style="bold() font(.system(size: 12)) foregroundStyle(.gray)"> Budget total : </Text> <Spacer style="frame(width: 15)"/>
     <Text> 10000 €</Text></HStack>
          <HStack><Text style="bold() font(.system(size: 12)) foregroundStyle(.gray)"> Montant total des promesses de dons : </Text> <Spacer style="frame(width: 15)"/>
     <Text> 3000 €</Text></HStack>
     <Spacer style="frame(height: 10)"/>
      <Text style="bold() font(.system(size: 12)) foregroundStyle(.gray)"> Description détaillée : </Text>
         <HStack>
     <Text> dsq ldsk dLMKD SQ dkdsmlq kdlm kdlmsqk DK smqk dksqlm KDLMS KDMKq k dmqs KD qkd dqs
     dlmù dmlqsm dlm sldmlsq ùd
     d lsqmDL MÙSlq dmù
     d lsmlùdQLSDùd msld mls dml dmùlqs dlm ùsq</Text></HStack>
      <Spacer style="frame(height: 10)"/>
       <HStack><Text style="foregroundStyle(.gray) font(.system(size: 12)) bold()">Documents annexes: </Text></HStack>
           <VStack>
    <TabView style="frame(height: 300) tabViewStyle(.page) indexViewStyle(.page(backgroundDisplayMode: .always)) padding()">
         <VStack style="padding()">
       <.image url={~p"/assets/logo.png"}>

      <:success style="resizable(); frame(width: 220, height: 220) scaleEffect(gesture_state(:magnify, .magnification, defaultValue: 1), anchor: gesture_state(:magnify, .startAnchor, defaultValue: .center))
            animation(.bouncy, value: gesture_state(:magnify, .magnification))
            simultaneousGesture(MagnifyGesture().updating(:magnify))
            frame(maxHeight: .infinity)" />
    </.image>


      </VStack>
      <VStack style="padding()">
         <Image systemName="exclamationmark.triangle" style="resizable() foregroundStyle(.black) frame(width: 100, height: 100)" />

      </VStack>
    </TabView>
    </VStack>
  <Spacer style="frame(height: 10)"/>
      <HStack><Text style="foregroundStyle(.gray) bold() font(.system(size: 12))"> Soutenir </Text> <Button style=" buttonStyle(.borderless)  "> <Image systemName="star" style="resizable() frame(width: 30, height: 30)" /></Button>  10</HStack>

            <HStack><Text style="foregroundStyle(.gray) bold() font(.system(size: 12))"> Pour </Text> <Button style=" buttonStyle(.borderless)  "> <Image systemName="envelope" style="resizable() frame(width: 36, height: 30)" /></Button>
           <Spacer style="frame(width: 40)"/> <Text style="foregroundStyle(.gray) bold() font(.system(size: 12))"> Blanc </Text> <Button style=" buttonStyle(.borderless)  "> <Image systemName="envelope" style="resizable() frame(width: 36, height: 30)" /></Button>
             <Spacer style="frame(width: 40)"/> <Text style="foregroundStyle(.gray) bold() font(.system(size: 12))"> Contre </Text> <Button style=" buttonStyle(.borderless)  "> <Image systemName="envelope" style="resizable() frame(width: 36, height: 30)" /></Button> </HStack>
                 <Spacer style="frame(height: 30)"/>
             <HStack><Text style="foregroundStyle(.gray) bold() font(.system(size: 12))"> Signaler le projet </Text>
              <Menu style="frame(width: 30, height: 10) menuIndicator(.hidden)">
            <Label template="label" >
              <Image systemName="exclamationmark.triangle" style="resizable() foregroundStyle(.black) frame(width: 18, height: 18)" />
            </Label>

          <Section>
           <Image systemName="info.bubble" style="resizable() foregroundStyle(.black) frame(width: 18, height: 18)" />
          <HStack> Êtes-vous sûr de vouloir signaler ?</HStack>

          </Section>
            <Button phx-click="filter">
             Oui <Image systemName="checkmark.circle" />
            </Button>
              <Section/>
              <Button role="destructive">

             Non <Image systemName="xmark.circle"  />
            </Button>
          </Menu>

             <Spacer style="frame(width: 250)"/></HStack>


    <Divider/>
     <Spacer style="frame(height: 20)"/>
  <HStack> <Text style="font(.system(size: 16, design: .serif, weight: .semibold))"> Commentaires :</Text>
     <Spacer style="frame(width: 30)"/> <Menu style="frame(width: 130)">
            <Label template="label" systemImage="line.3.horizontal.decrease.circle.fill"  >
            Trier
            </Label>

            <Button phx-click="clear-filter">Date</Button>
            <Button
              phx-click="filter">
             Soutien
            </Button>
          </Menu>

          </HStack>
      <Spacer style="frame(height: 15)"/>
              <HStack>
      <Text style="foregroundStyle(.gray) bold() font(.system(size: 12))"> De : </Text> <.link navigate={~p"/"}  style={[
        "buttonStyle(.borderedProminent)",
        "controlSize(.small)",
        "listRowInsets(EdgeInsets())",
        "listRowBackground(:empty)"]} ><Text> dupont</Text></.link><Spacer style="frame(width: 30)"/><Text style="font(.system(size: 12, design: .serif, weight: .semibold))" > Il y a 10 min </Text> </HStack>
        <HStack>
     <Text> dsq ldsk dLMKD SQ dkdsmlq kdlm kdlmsqk DK smqk dksqlm KDLMS KDMKq k dmqs KD qkd dqs
     dlmù dmlqsm dlm sldmlsq ùd
     d lsqmDL MÙSlq dmù
     d lsmlùdQLSDùd msld mls dml dmùlqs dlm ùsq</Text></HStack>
     <HStack><Text style="foregroundStyle(.gray) bold() font(.system(size: 10))"> Signaler le commentaire </Text>
     <Menu style="frame(width: 30, height: 10) menuIndicator(.hidden)">
            <Label template="label" >
              <Image systemName="exclamationmark.triangle" style="resizable() foregroundStyle(.black) frame(width: 18, height: 18)" />
            </Label>

          <Section>
           <Image systemName="info.bubble" style="resizable() foregroundStyle(.black) frame(width: 16, height: 16)" />
          <HStack> Êtes-vous sûr de vouloir signaler ?</HStack>

          </Section>
            <Button

              phx-click="filter" >
             Oui <Image systemName="checkmark.circle" />
            </Button>
              <Section/>
              <Button role="destructive"


            >

             Non <Image systemName="xmark.circle"  />
            </Button>
          </Menu>
<Spacer style="frame(width: 150)"/><Text style="foregroundStyle(.gray) bold() font(.system(size: 12))"> Soutenir </Text> <Button style=" buttonStyle(.borderless)  "> <Image systemName="star" style="resizable()  frame(width: 30, height: 30)" /></Button> 200 </HStack>
                       <HStack></HStack>


    <Spacer style="frame(height: 10) "/>
     <Divider/>

    </VStack>
  </ScrollView>





      </VStack>
      <VStack tag="2" style="tabItem(:item)">
        <Label
          template="item"
          systemImage="rectangle.and.pencil.and.ellipsis"
        >
          Commentaire
        </Label>

          <ScrollView  style="background(.linearGradient(
      colors: [.teal, .white],
      startPoint: .top,
      endPoint: .bottom
    ))">

    <VStack>
    <Spacer style="frame(height: 10)"/>


    <HStack><Spacer style="frame(width: 20)"/> <Text style="font(.system(size: 12)) bold() foregroundStyle(.gray)"> Type :</Text> Loi</HStack>
     <HStack><Text style="bold() font(.system(size: 12)) foregroundStyle(.gray)"> Proposé par : </Text> <Spacer style="frame(width: 15)"/>
      <.link navigate={~p"/"}  style={[
        "buttonStyle(.borderedProminent)",
        "controlSize(.small)",
        "listRowInsets(EdgeInsets())",
        "listRowBackground(:empty)"]} ><Text> dupont</Text></.link> <Spacer style="frame(width: 15)"/><Text style="bold() font(.system(size: 12)) foregroundStyle(.gray)"> Création : </Text> 01/02/24</HStack>
       <HStack><Text style="bold() font(.system(size: 12)) foregroundStyle(.gray)"> Collaborteurs(trices) : </Text> <Spacer style="frame(width: 15)"/>
     <.link :for={user <- ["test", "test2"]} navigate={~p"/"}  style={[
        "buttonStyle(.borderedProminent)",
        "controlSize(.small)",
        "listRowInsets(EdgeInsets())",
        "listRowBackground(:empty)"]} ><Text><%=user%></Text></.link></HStack>
      <HStack><Text style="bold() font(.system(size: 12)) foregroundStyle(.gray)"> Localité : </Text> <Spacer style="frame(width: 15)"/>
     <Text> Ste Marie de Ré</Text> <Spacer style="frame(width: 30)"/><Text style="bold() font(.system(size: 12)) foregroundStyle(.gray)"> Statut : </Text> <Spacer style="frame(width: 15)"/>
     <Text> En débat</Text></HStack>

       <Divider/>
     <Spacer style="frame(height: 20)"/>
           <HStack><Text style="foregroundStyle(.gray) bold() font(.system(size: 12))"> Marque-page </Text> <Button style=" buttonStyle(.borderless)  "> <Image systemName="bookmark" style="resizable() frame(width: 20, height: 30)" /></Button><Spacer style="frame(width: 200)"/></HStack>


    <HStack><Text style="bold()  font(.system(size: 12)) foregroundStyle(.gray)" >Titre :</Text> <Spacer style="frame(width: 15)"/><Text style="font(.system(size: 26, design: .serif))"> dsqlmdldmsqkldmsqkdlmkldqsmk </Text></HStack>
    <Spacer style="frame(height: 10)"/>
    <Text style="bold() font(.system(size: 12)) foregroundStyle(.gray)"> Description brève : </Text>
    <HStack>
     <Text> dsq ldsk dLMKD SQ dkdsmlq kdlm kdlmsqk DK smqk dksqlm KDLMS KDMKq k dmqs KD qkd dqs</Text></HStack>
      <Spacer style="frame(height: 10)"/>
       <HStack><Text style="bold() font(.system(size: 12)) foregroundStyle(.gray)"> Budget total : </Text> <Spacer style="frame(width: 15)"/>
     <Text> 10000 €</Text></HStack>
          <HStack><Text style="bold() font(.system(size: 12)) foregroundStyle(.gray)"> Montant total des promesses de dons : </Text> <Spacer style="frame(width: 15)"/>
     <Text> 3000 €</Text></HStack>
     <Spacer style="frame(height: 10)"/>
      <Text style="bold() font(.system(size: 12)) foregroundStyle(.gray)"> Description détaillée : </Text>
         <HStack>
     <Text> dsq ldsk dLMKD SQ dkdsmlq kdlm kdlmsqk DK smqk dksqlm KDLMS KDMKq k dmqs KD qkd dqs
     dlmù dmlqsm dlm sldmlsq ùd
     d lsqmDL MÙSlq dmù
     d lsmlùdQLSDùd msld mls dml dmùlqs dlm ùsq</Text></HStack>
      <Spacer style="frame(height: 10)"/>
       <HStack><Text style="foregroundStyle(.gray) font(.system(size: 12)) bold()">Documents annexes: </Text></HStack>
           <VStack>
    <TabView style="frame(height: 300) tabViewStyle(.page) indexViewStyle(.page(backgroundDisplayMode: .always)) padding()">
         <VStack style="padding()">
       <.image url={~p"/assets/logo.png"}>

      <:success style="resizable(); frame(width: 220, height: 220) scaleEffect(gesture_state(:magnify, .magnification, defaultValue: 1), anchor: gesture_state(:magnify, .startAnchor, defaultValue: .center))
            animation(.bouncy, value: gesture_state(:magnify, .magnification))
            simultaneousGesture(MagnifyGesture().updating(:magnify))
            frame(maxHeight: .infinity)" />
    </.image>


      </VStack>
      <VStack style="padding()">
         <Image systemName="exclamationmark.triangle" style="resizable() foregroundStyle(.black) frame(width: 100, height: 100)" />

      </VStack>
    </TabView>
    </VStack>


    <Spacer style="frame(height: 10)"/>
      <HStack><Text style="foregroundStyle(.gray) bold() font(.system(size: 12))"> Soutenir </Text> <Button style=" buttonStyle(.borderless)  "> <Image systemName="star" style="resizable() frame(width: 30, height: 30)" /></Button>  10</HStack>

            <HStack><Text style="foregroundStyle(.gray) bold() font(.system(size: 12))"> Pour </Text> <Button style=" buttonStyle(.borderless)  "> <Image systemName="envelope" style="resizable() frame(width: 36, height: 30)" /></Button>
           <Spacer style="frame(width: 40)"/> <Text style="foregroundStyle(.gray) bold() font(.system(size: 12))"> Blanc </Text> <Button style=" buttonStyle(.borderless)  "> <Image systemName="envelope" style="resizable() frame(width: 36, height: 30)" /></Button>
             <Spacer style="frame(width: 40)"/> <Text style="foregroundStyle(.gray) bold() font(.system(size: 12))"> Contre </Text> <Button style=" buttonStyle(.borderless)  "> <Image systemName="envelope" style="resizable() frame(width: 36, height: 30)" /></Button> </HStack>
                 <Spacer style="frame(height: 30)"/>
             <HStack><Text style="foregroundStyle(.gray) bold() font(.system(size: 12))"> Signaler le projet </Text>
              <Menu style="frame(width: 30, height: 10) menuIndicator(.hidden)">
            <Label template="label" >
              <Image systemName="exclamationmark.triangle" style="resizable() foregroundStyle(.black) frame(width: 18, height: 18)" />
            </Label>

          <Section>
           <Image systemName="info.bubble" style="resizable() foregroundStyle(.black) frame(width: 18, height: 18)" />
          <HStack> Êtes-vous sûr de vouloir signaler ?</HStack>

          </Section>
            <Button phx-click="filter" >
             Oui <Image systemName="checkmark.circle" />
            </Button>
              <Section/>
              <Button role="destructive"> Non <Image systemName="xmark.circle"  />
            </Button>
          </Menu>

             <Spacer style="frame(width: 250)"/></HStack>


    <Divider/>
     <Spacer style="frame(height: 20)"/>
     <Button :if={@show == 0} phx-click="writecom"> Ecrire un commentaire </Button>
     <Spacer style="frame(height: 20)" />

    <HStack> <Text style="font(.system(size: 16, design: .serif, weight: .semibold))"> Commentaires :</Text>
     <Spacer style="frame(width: 30)"/> <Menu style="frame(width: 130)">
            <Label template="label" systemImage="line.3.horizontal.decrease.circle.fill"  >
            Trier
            </Label>

            <Button phx-click="clear-filter">Date</Button>
            <Button
              phx-click="filter"

            >
             Soutien
            </Button>
          </Menu>

          </HStack>
      <Spacer style="frame(height: 15)"/>
              <HStack>
      <Text style="foregroundStyle(.gray) bold() font(.system(size: 12))"> De : </Text> <.link navigate={~p"/"}  style={[
        "buttonStyle(.borderedProminent)",
        "controlSize(.small)",
        "listRowInsets(EdgeInsets())",
        "listRowBackground(:empty)"]} ><Text> dupont</Text></.link><Spacer style="frame(width: 30)"/><Text style="font(.system(size: 12, design: .serif, weight: .semibold))" > Il y a 10 min </Text> </HStack>
        <HStack>
     <Text> dsq ldsk dLMKD SQ dkdsmlq kdlm kdlmsqk DK smqk dksqlm KDLMS KDMKq k dmqs KD qkd dqs
     dlmù dmlqsm dlm sldmlsq ùd
     d lsqmDL MÙSlq dmù
     d lsmlùdQLSDùd msld mls dml dmùlqs dlm ùsq</Text></HStack>
     <HStack><Text style="foregroundStyle(.gray) bold() font(.system(size: 10))"> Signaler le commentaire </Text>
     <Menu style="frame(width: 30, height: 10) menuIndicator(.hidden)">
            <Label template="label" >
              <Image systemName="exclamationmark.triangle" style="resizable() foregroundStyle(.black) frame(width: 18, height: 18)" />
            </Label>

          <Section>
           <Image systemName="info.bubble" style="resizable() foregroundStyle(.black) frame(width: 16, height: 16)" />
          <HStack> Êtes-vous sûr de vouloir signaler ?</HStack>

          </Section>
            <Button

              phx-click="filter"

            >
             Oui <Image systemName="checkmark.circle" />
            </Button>
              <Section/>
              <Button role="destructive"


            >

             Non <Image systemName="xmark.circle"  />
            </Button>
          </Menu>
<Spacer style="frame(width: 150)"/><Text style="foregroundStyle(.gray) bold() font(.system(size: 12))"> Soutenir </Text> <Button style=" buttonStyle(.borderless)  "> <Image systemName="star" style="resizable()  frame(width: 30, height: 30)" /></Button> 200 </HStack>
                       <HStack></HStack>


    <Spacer style="frame(height: 10) "/>
     <Divider/>

    </VStack>
  </ScrollView>
  <VStack>
    <VStack style="background(.linearGradient(
      colors: [.teal, .white],
      startPoint: .top,
      endPoint: .bottom
    ))">

      <LiveForm
   id="my-form2"
    phx-submit="submit">
  <Spacer style="frame(height: 5) "/>
    <HStack></HStack>
 <HStack> <Spacer style="frame(height: 10
 )"/><TextEditor name="test" style="  frame(width: 360, height: 220) padding(4)  background(content: :border2) overlay(content: :border)
                " text="dsqdqdsd"> dsqkdqkmdl<RoundedRectangle cornerRadius="20" style=" stroke(.white, lineWidth: 5)" template="border">xcxwcwc </RoundedRectangle>
             <RoundedRectangle cornerRadius="20" style="fill(.white)" template="border2"></RoundedRectangle> </TextEditor>


<Spacer style="frame(height: 10
 )"/></HStack>
<HStack>
     <Menu :if={@target == "ios"} style="frame(width: 120, height: 40) menuIndicator(.hidden)">
            <Label template="label" >
       <Button style=" buttonStyle(.borderedProminent)
    buttonBorderShape(.roundedRectangle(radius: 20))">Poster</Button>
            </Label>


          <LiveSubmitButton>

             Oui <Image systemName="checkmark.circle" />
            </LiveSubmitButton>
              <Section/>
              <Button role="destructive" >

             Non <Image systemName="xmark.circle"  />
            </Button>

              <Section>

          <HStack> Êtes-vous sûr de vouloir poster votre commentaire ?</HStack>
           <Image systemName="info.bubble" style="resizable() foregroundStyle(.black) frame(width: 16, height: 16)" />
          </Section>
          </Menu>
          <Menu :if={@target != "ios"} style="frame(width: 120, height: 40) menuIndicator(.hidden)">
            <Label template="label" >
       <Button style=" buttonStyle(.borderedProminent)
    buttonBorderShape(.roundedRectangle(radius: 20))">Poster</Button>
            </Label>

          <Section>
              <Image systemName="info.bubble" style="resizable() foregroundStyle(.black) frame(width: 16, height: 16)" />
          <HStack> Êtes-vous sûr de vouloir poster votre commentaire ?</HStack>

          </Section>
          <LiveSubmitButton>

             Oui <Image systemName="checkmark.circle" />
            </LiveSubmitButton>
              <Section/>
              <Button role="destructive">

             Non <Image systemName="xmark.circle"  />
            </Button>
          </Menu></HStack>

        <Divider />
  </LiveForm>

        </VStack>
  </VStack>

      </VStack>
      <VStack tag="2" style="tabItem(:item)">
        <Label
          template="item"
          systemImage="creditcard"
        >
          Don
        </Label>
 <ScrollView  style="background(.linearGradient(
      colors: [.teal, .white],
      startPoint: .top,
      endPoint: .bottom
    ))">





    <VStack>
    <Spacer style="frame(height: 10)"/>


    <HStack><Spacer style="frame(width: 20)"/> <Text style="font(.system(size: 12)) bold() foregroundStyle(.gray)"> Type :</Text> Loi</HStack>
     <HStack><Text style="bold() font(.system(size: 12)) foregroundStyle(.gray)"> Proposé par : </Text> <Spacer style="frame(width: 15)"/>
      <.link navigate={~p"/"}  style={[
        "buttonStyle(.borderedProminent)",
        "controlSize(.small)",
        "listRowInsets(EdgeInsets())",
        "listRowBackground(:empty)"]} ><Text> dupont</Text></.link> <Spacer style="frame(width: 15)"/><Text style="bold() font(.system(size: 12)) foregroundStyle(.gray)"> Création : </Text> 01/02/24</HStack>
       <HStack><Text style="bold() font(.system(size: 12)) foregroundStyle(.gray)"> Collaborteurs(trices) : </Text> <Spacer style="frame(width: 15)"/>
     <.link :for={user <- ["test", "test2"]} navigate={~p"/"}  style={[
        "buttonStyle(.borderedProminent)",
        "controlSize(.small)",
        "listRowInsets(EdgeInsets())",
        "listRowBackground(:empty)"]} ><Text><%=user%></Text></.link></HStack>
      <HStack><Text style="bold() font(.system(size: 12)) foregroundStyle(.gray)"> Localité : </Text> <Spacer style="frame(width: 15)"/>
     <Text> Ste Marie de Ré</Text> <Spacer style="frame(width: 30)"/><Text style="bold() font(.system(size: 12)) foregroundStyle(.gray)"> Statut : </Text> <Spacer style="frame(width: 15)"/>
     <Text> En débat</Text></HStack>

       <Divider/>
     <Spacer style="frame(height: 20)"/>
           <HStack><Text style="foregroundStyle(.gray) bold() font(.system(size: 12))"> Marque-page </Text> <Button style=" buttonStyle(.borderless)  "> <Image systemName="bookmark" style="resizable() frame(width: 20, height: 30)" /></Button><Spacer style="frame(width: 200)"/></HStack>


    <HStack><Text style="bold()  font(.system(size: 12)) foregroundStyle(.gray)" >Titre :</Text> <Spacer style="frame(width: 15)"/><Text style="font(.system(size: 26, design: .serif))"> dsqlmdldmsqkldmsqkdlmkldqsmk </Text></HStack>
    <Spacer style="frame(height: 10)"/>
    <Text style="bold() font(.system(size: 12)) foregroundStyle(.gray)"> Description brève : </Text>
    <HStack>
     <Text> dsq ldsk dLMKD SQ dkdsmlq kdlm kdlmsqk DK smqk dksqlm KDLMS KDMKq k dmqs KD qkd dqs</Text></HStack>
      <Spacer style="frame(height: 10)"/>
       <HStack><Text style="bold() font(.system(size: 12)) foregroundStyle(.gray)"> Budget total : </Text> <Spacer style="frame(width: 15)"/>
     <Text> 10000 €</Text></HStack>
          <HStack><Text style="bold() font(.system(size: 12)) foregroundStyle(.gray)"> Montant total des promesses de dons : </Text> <Spacer style="frame(width: 15)"/>
     <Text> 3000 €</Text></HStack>
     <Spacer style="frame(height: 10)"/>
      <Text style="bold() font(.system(size: 12)) foregroundStyle(.gray)"> Description détaillée : </Text>
         <HStack>
     <Text> dsq ldsk dLMKD SQ dkdsmlq kdlm kdlmsqk DK smqk dksqlm KDLMS KDMKq k dmqs KD qkd dqs
     dlmù dmlqsm dlm sldmlsq ùd
     d lsqmDL MÙSlq dmù
     d lsmlùdQLSDùd msld mls dml dmùlqs dlm ùsq</Text></HStack>
      <Spacer style="frame(height: 10)"/>
       <HStack><Text style="foregroundStyle(.gray) font(.system(size: 12)) bold()">Documents annexes: </Text></HStack>
           <VStack>
    <TabView style="frame(height: 300) tabViewStyle(.page) indexViewStyle(.page(backgroundDisplayMode: .always)) padding()">
         <VStack style="padding()">
       <.image url={~p"/assets/logo.png"}>

      <:success style="resizable(); frame(width: 220, height: 220) scaleEffect(gesture_state(:magnify, .magnification, defaultValue: 1), anchor: gesture_state(:magnify, .startAnchor, defaultValue: .center))
            animation(.bouncy, value: gesture_state(:magnify, .magnification))
            simultaneousGesture(MagnifyGesture().updating(:magnify))
            frame(maxHeight: .infinity)" />
    </.image>


      </VStack>
      <VStack style="padding()">
         <Image systemName="exclamationmark.triangle" style="resizable() foregroundStyle(.black) frame(width: 100, height: 100)" />

      </VStack>
    </TabView>
    </VStack>
  <Spacer style="frame(height: 10)"/>
      <HStack><Text style="foregroundStyle(.gray) bold() font(.system(size: 12))"> Soutenir </Text> <Button style=" buttonStyle(.borderless)  "> <Image systemName="star" style="resizable() frame(width: 30, height: 30)" /></Button>  10</HStack>

            <HStack><Text style="foregroundStyle(.gray) bold() font(.system(size: 12))"> Pour </Text> <Button style=" buttonStyle(.borderless)  "> <Image systemName="envelope" style="resizable() frame(width: 36, height: 30)" /></Button>
           <Spacer style="frame(width: 40)"/> <Text style="foregroundStyle(.gray) bold() font(.system(size: 12))"> Blanc </Text> <Button style=" buttonStyle(.borderless)  "> <Image systemName="envelope" style="resizable() frame(width: 36, height: 30)" /></Button>
             <Spacer style="frame(width: 40)"/> <Text style="foregroundStyle(.gray) bold() font(.system(size: 12))"> Contre </Text> <Button style=" buttonStyle(.borderless)  "> <Image systemName="envelope" style="resizable() frame(width: 36, height: 30)" /></Button> </HStack>
                 <Spacer style="frame(height: 30)"/>
             <HStack><Text style="foregroundStyle(.gray) bold() font(.system(size: 12))"> Signaler le projet </Text>
              <Menu style="frame(width: 30, height: 10) menuIndicator(.hidden)">
            <Label template="label" >
              <Image systemName="exclamationmark.triangle" style="resizable() foregroundStyle(.black) frame(width: 18, height: 18)" />
            </Label>

          <Section>
           <Image systemName="info.bubble" style="resizable() foregroundStyle(.black) frame(width: 18, height: 18)" />
          <HStack> Êtes-vous sûr de vouloir signaler ?</HStack>

          </Section>
            <Button phx-click="filter">
             Oui <Image systemName="checkmark.circle" />
            </Button>
              <Section/>
              <Button role="destructive">

             Non <Image systemName="xmark.circle"  />
            </Button>
          </Menu>

             <Spacer style="frame(width: 250)"/></HStack>


    <Divider/>
     <Spacer style="frame(height: 20)"/>
  <HStack> <Text style="font(.system(size: 16, design: .serif, weight: .semibold))"> Commentaires :</Text>
     <Spacer style="frame(width: 30)"/> <Menu style="frame(width: 130)">
            <Label template="label" systemImage="line.3.horizontal.decrease.circle.fill"  >
            Trier
            </Label>

            <Button phx-click="clear-filter">Date</Button>
            <Button
              phx-click="filter">
             Soutien
            </Button>
          </Menu>

          </HStack>
      <Spacer style="frame(height: 15)"/>
              <HStack>
      <Text style="foregroundStyle(.gray) bold() font(.system(size: 12))"> De : </Text> <.link navigate={~p"/"}  style={[
        "buttonStyle(.borderedProminent)",
        "controlSize(.small)",
        "listRowInsets(EdgeInsets())",
        "listRowBackground(:empty)"]} ><Text> dupont</Text></.link><Spacer style="frame(width: 30)"/><Text style="font(.system(size: 12, design: .serif, weight: .semibold))" > Il y a 10 min </Text> </HStack>
        <HStack>
     <Text> dsq ldsk dLMKD SQ dkdsmlq kdlm kdlmsqk DK smqk dksqlm KDLMS KDMKq k dmqs KD qkd dqs
     dlmù dmlqsm dlm sldmlsq ùd
     d lsqmDL MÙSlq dmù
     d lsmlùdQLSDùd msld mls dml dmùlqs dlm ùsq</Text></HStack>
     <HStack><Text style="foregroundStyle(.gray) bold() font(.system(size: 10))"> Signaler le commentaire </Text>
     <Menu style="frame(width: 30, height: 10) menuIndicator(.hidden)">
            <Label template="label" >
              <Image systemName="exclamationmark.triangle" style="resizable() foregroundStyle(.black) frame(width: 18, height: 18)" />
            </Label>

          <Section>
           <Image systemName="info.bubble" style="resizable() foregroundStyle(.black) frame(width: 16, height: 16)" />
          <HStack> Êtes-vous sûr de vouloir signaler ?</HStack>

          </Section>
            <Button

              phx-click="filter" >
             Oui <Image systemName="checkmark.circle" />
            </Button>
              <Section/>
              <Button role="destructive"


            >

             Non <Image systemName="xmark.circle"  />
            </Button>
          </Menu>
<Spacer style="frame(width: 150)"/><Text style="foregroundStyle(.gray) bold() font(.system(size: 12))"> Soutenir </Text> <Button style=" buttonStyle(.borderless)  "> <Image systemName="star" style="resizable()  frame(width: 30, height: 30)" /></Button> 200 </HStack>
                       <HStack></HStack>


    <Spacer style="frame(height: 10) "/>
     <Divider/>

    </VStack>
  </ScrollView>
         <VStack>
    <VStack style="background(.linearGradient(
      colors: [.teal, .white],
      startPoint: .top,
      endPoint: .bottom
    ))">

      <LiveForm
   id="formdon"
    phx-submit="submit">
     <Spacer style="frame(height: 10) "/>
   <Text style="foregroundStyle(.white) bold() font(.system(size: 15, design: .serif) )">  Faire une promesse de don au projet </Text>

  <Spacer style="frame(height: 20) "/>
    <HStack></HStack>


<HStack><TextField name="don"  style="frame(width: 200, height: 14) padding(10) background(content: :border2) overlay(content: :border)
              "> <Text>Montant de la promesse  </Text><RoundedRectangle cornerRadius="20" style=" stroke(.white, lineWidth: 2)" template="border"> </RoundedRectangle>
              <RoundedRectangle cornerRadius="20" style="fill(.white  )" template="border2"> </RoundedRectangle></TextField>
               <Image systemName="eurosign" />
              </HStack>






 <Spacer style="frame(height: 20) "/>



<HStack>
     <Menu :if={@target == "ios"} style="frame(width: 200, height: 40) menuIndicator(.hidden)">
            <Label template="label" >
       <Button style=" buttonStyle(.borderedProminent)
    buttonBorderShape(.roundedRectangle(radius: 20))">   <Text style="foregroundStyle(.green) bold() font(.system(size: 12))">Valider la promesse</Text><Image style="frame(width: 20) foregroundStyle(.green)" systemName="checkmark"  /></Button>
            </Label>


          <LiveSubmitButton>

             Oui <Image systemName="checkmark.circle" />
            </LiveSubmitButton>
              <Section/>
              <Button role="destructive" >

             Non <Image systemName="xmark.circle"  />
            </Button>

              <Section>

          <HStack> Êtes-vous sûr de vouloir faire cette promesse ?</HStack>
           <Image systemName="info.bubble" style="resizable() foregroundStyle(.black) frame(width: 16, height: 16)" />
          </Section>
          </Menu>
          <Menu :if={@target != "ios"} style="frame(width: 120, height: 40) menuIndicator(.hidden)">
            <Label template="label" >
       <Button style=" buttonStyle(.borderedProminent)
    buttonBorderShape(.roundedRectangle(radius: 20))">Poster</Button>
            </Label>

          <Section>
              <Image systemName="info.bubble" style="resizable() foregroundStyle(.black) frame(width: 16, height: 16)" />
          <HStack> Êtes-vous sûr de vouloir poster votre commentaire ?</HStack>

          </Section>
          <LiveSubmitButton>

             Oui <Image systemName="checkmark.circle" />
            </LiveSubmitButton>
              <Section/>
              <Button role="destructive">

             Non <Image systemName="xmark.circle"  />
            </Button>
          </Menu></HStack>
           <Spacer style="frame(height: 20) "/>

        <Divider />
  </LiveForm>

        </VStack>
  </VStack>




      </VStack>


      </TabView>

      </VStack>















      """
  end

end
