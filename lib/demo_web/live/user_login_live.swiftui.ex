defmodule DemoWeb.UserLoginLive.SwiftUI do
  use DemoNative, [:render_component, format: :swiftui]


  def render(assigns, _) do
    ~LVN"""










    <VStack style="navigationBarBackButtonHidden(true)">

             <HStack> Idendifiez-vous <Spacer style="frame(width: 150)"/><.link navigate={~p"/"} style="buttonStyle(.plain)"><Image systemName="house" style="resizable() frame(width: 26, height: 26)"/></.link> </HStack>

    <.simple_form for={@form} id="login_form" action={~p"/users/log_in"}  method="post">
      <Section>
    <Group template="footer">



         </Group>
        </Section>
      <Section>
        <.input style="frame(width: 200)" class="keyboardType(.emailAddress)" field={@form[:email]} value={@email} type="TextField" label="Email" />
        <.input style="frame(width: 225)" field={@form[:password]} value={@password} type="SecureField" label="Password" />

        <SecureField style={["frame(width: 225)","disabled(true)",~s[focused(attr("focus"))]]} focus={@focus}  text={@pin} name="pin">Pin</SecureField>

        <Text> <%= @pin %> </Text>
        <Group template="footer">
          <.link navigate={~p"/users/reset-password"} class="font-caption font-weight-semibold">
           Mot de passe oublié
          </.link>
        </Group>
      </Section>

      <Section>
        <.input field={@form[:remember_me]} type="Toggle" label="Me garder connecté" />
      </Section>

      <Section>

      <Group template="footer">
      <HStack>Composez votre pin avec ce clavier <Image systemName="arrow.down.app" /></HStack>
      </Group>
       </Section>
      <Section style="frame(width: 400)">
      <Group template="footer">
      <HStack>



      <Button class="button-blue" phx-click="1" phx-value-v="1" > <Circle class="button-border" template="border" />1 </Button><Spacer  style="frame(width: 15)"/>   <Button class="button-blue" phx-click="1" phx-value-v="2" ><Circle class="button-border" template="border" />2 </Button><Spacer  style="frame(width: 15)"/>   <Button class="button-blue"  phx-click="1" phx-value-v="3" ><Circle class="button-border" template="border" />3 </Button><Spacer  style="frame(width: 15)"/>
      <Button class="button-blue" phx-click="1" phx-value-v="4" ><Circle class="button-border" template="border" />4 </Button>
      <Spacer  style="frame(width: 15)"/><Button class="button-blue" phx-click="1" phx-value-v="5" ><Circle class="button-border" template="border" />5 </Button></HStack>

      </Group>
      </Section>
      <Section style="frame(width: 400)">
        <Group template="footer">
         <HStack>
       <Button class="button-blue" phx-click="1" phx-value-v="6" ><Circle class="button-border" template="border" />6 </Button><Spacer  style="frame(width: 15)"/> <Button class="button-blue" phx-click="1" phx-value-v="7" ><Circle class="button-border" template="border" />7 </Button><Spacer  style="frame(width: 15)"/>
         <Button class="button-blue" phx-click="1" phx-value-v="8" ><Circle class="button-border" template="border" />8 </Button><Spacer  style="frame(width: 15)"/> <Button class="button-blue" phx-click="1" phx-value-v="9" ><Circle class="button-border" template="border" />9 </Button><Spacer  style="frame(width: 15)"/>   <Button class="button-blue" phx-click="1" phx-value-v="0" ><Circle class="button-border" template="border" />0 </Button></HStack>
         </Group>
      </Section>

        <Section style="frame(width: 400)">
        <Group template="footer">
         <HStack>   <Button  phx-click="1" phx-value-v="cancel" style=" buttonStyle(.borderedProminent)
    buttonBorderShape(.roundedRectangle(radius: 20))">Annuler </Button><Spacer  style="frame(width: 30)"/><Button style=" buttonStyle(.borderedProminent)
    buttonBorderShape(.roundedRectangle(radius: 20))" phx-click="1" phx-value-v="reset" >Remise à 0 </Button></HStack>
         </Group>
      </Section>




      <:actions>
        <.button :if={@email != "" && @password != "" && String.length(@pin) > 3} type="submit" >
          <Text>Connexion<Text verbatim=" " /><Image systemName="arrow.right" /></Text>
        </.button>
      </:actions>



    </.simple_form>










    </VStack>

    """
  end
end
