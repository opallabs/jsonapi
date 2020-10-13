defmodule JSONAPI.RelationView do
  @moduledoc """
  A RelationView is a view that knows how to take a non-relationship
  property and transform it into a relationship.

  It must only do two things: Specify the `type` of the relation and
  define a function that takes the respective attribute and returns
  the value to be used as the relation's Id.

      defmodule PostRelationView do
        use JSONAPI.RelationView, type: 'post'

        def id(attr) do
          # here we assume the attribute is just the Id
          # without any transformation needed.
          attr
        end
      end

  You can now use the RelationView as a relationship in another view.

      defmodule OtherView do
        use JSONAPI.View, type: 'other'

        def relationships do
          [post: PostRelationView]
        end
      end
  """

  alias Plug.Conn

  defmacro __using__(opts \\ []) do
    {type, opts} = Keyword.pop(opts, :type)

    # credo:disable-for-next-line Credo.Check.Refactor.LongQuoteBlocks
    quote do

      @resource_type unquote(type)

      def id(nil), do: nil
      def id(%{__struct__: Ecto.Association.NotLoaded}), do: nil
      def id(%{id: id}), do: to_string(id)

      if @resource_type do
        def type, do: @resource_type
      else
        def type, do: raise("Need to implement type/0")
      end

      defoverridable id: 1,
                     type: 0
    end
  end
end
