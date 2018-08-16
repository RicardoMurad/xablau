defmodule Assertion2 do

  defmacro __using__(_options) do

    quote do
      import unquote(__MODULE__)
      def run() do
        IO.puts("Saiu do use")
      end
    end

  end
end