defmodule Debugger do

  defmacro log(expression) do
    quote do
      IO.puts "============================="
      IO.inspect(unquote(expression))
      IO.puts "============================="
      unquote(expression)
    end
  end

  defmacro log2(expression) do
    quote bind_quoted: [expression: expression] do
      IO.puts "============================="
      IO.inspect(expression)
      IO.puts "============================="
      expression
    end
  end

  # remote_api_call = fn -> IO.puts("calling remote API...")
  # require Debugger
  # Debugger.log(remote_api_call.())


  # IMPORTANT
  #One thing to keep in mind when using bind_quoted is that unquote is disabled.
end