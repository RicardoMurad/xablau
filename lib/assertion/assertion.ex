defmodule Assertion do

  defmacro assert({operator, _, [lhs, rhs]}) do
    quote bind_quoted: [operator: operator, lhs: lhs, rhs: rhs] do
      Assertion.Test.assert(operator, lhs, rhs)
    end
  end

  # bind quoted
  #
  # The quote macro’s bind_quoted option passes a binding to the block, ensuring
  # that the outside bound variables are unquoted only a single time. We could
  # have written our quote block without bind_quoted , but it’s good practice to use
  # it whenever possible to prevent accidental reevaluation of bindings.

end