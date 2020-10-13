defmodule JSONAPI.Ecto do
  @moduledoc """
  Helper functions for working with Ecto
  """

  @doc """
  Checks to see if an associated table is Loaded.

  If the model is an `Ecto.Association.NotLoaded`
  """
  @spec assoc_loaded?(term()) :: boolean()
  def assoc_loaded?(association) do
    case association do
      %{__struct__: Ecto.Association.NotLoaded} -> false
      _ -> true
    end
  end

  def data_is_not_assoc?(value) do
    case value do
      %{__struct__: Ecto.Association.NotLoaded} -> false
      %{__struct__: Ecto.Association} -> false
      _ -> true
    end
  end
end
