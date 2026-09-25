defmodule Operational.Assets do
  alias Operational.{Asset, Repo}

  def get(id) do
    case Repo.get(Asset, id) do
      nil -> {:error, :not_found}
      asset -> {:ok, asset}
    end
  end

  def create(attrs) when is_map(attrs) do
    %Asset{}
    |> Asset.changeset(attrs)
    |> Repo.insert()
  end
end
