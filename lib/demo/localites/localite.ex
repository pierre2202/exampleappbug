defmodule Demo.Localites.Localite do
  alias Demo.Repo
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query, warn: false

  schema "localites" do
    field :name, :string
    field :code_postal, :string
    field :list_dep, :string
    field :code_insee, :string
    field :dette, :integer
    field :tresorieannuelle, :integer
    field :revenuannuel, :integer
    field :depensesannuelles, :integer
    field :siteweb, :string
    field :edit,:string




  end

  @doc false
  def changeset(localite, attrs) do
    localite
    |> cast(attrs, [:name])
    |> validate_required([:name])

  end




  def searchcommune(search_query) do
    search_query = "%#{search_query}%"
    Repo.all(from l in Demo.Localites.Localite, where: l.id > 1571  and (ilike(l.name, ^search_query) or ilike(l.code_postal, ^search_query)),
    select: %{name: l.name, id: l.id}, order_by: [asc: l.name], limit: 5)

  end





end
