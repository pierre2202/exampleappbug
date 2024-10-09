defmodule Blog.Repo.Migrations.CreateLocalites do
  use Ecto.Migration

  def change do
    create table(:localites) do
      add :name, :string
      add :code_postal, :string
      add :list_dep, :string
      add :code_insee, :text
      add :dette, :integer
      add :tresorieannuelle, :integer
      add :revenuannuel, :integer
      add :depensesannuelles, :integer
      add :siteweb, :string
      add :edit, :string




    end
  end
end
