defmodule ControlFlow do

  defmacro my_if(expression, do: if_block, else: else_block) do
    quote do
      case unquote(expression) do
        result when result in [false, nil] -> unquote(else_block)
        _ -> unquote(if_block)
      end
    end
  end

  defmacro while(expression, do: block) do
    quote do
      try do
        for _ <- Stream.cycle([:ok]) do
          if unquote(expression) do
            unquote(block)
          else
            throw :break
          end
        end
      catch
        :break -> :ok
      end
    end
  end

#  run_loop = fn  ->
#    pid = spawn(fn -> :timer.sleep(5000) end)
#    ControlFlow.while Process.alive?(pid) do
#      IO.puts("#{inspect :erlang.time()} TO VIVO")
#      :timer.sleep(1000)
#    end
#  end

end