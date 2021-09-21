defmodule SumList do
  def call(list), do: sum(list, 0)

  # sum1
  defp sum([], acc), do: acc

  # sum2
  defp sum([head | tail], acc) do
    acc = acc + head
    sum(tail, acc)
  end
end

# TESTE DE MESA
# EXEMPLO: [1,2,3],0
#
# 1 ex| list: [1,2,3] hd: 1, tail: [2, 3], acc: 0
# Vai cair no #sum2 -> acc = 0 + 1, sum([2, 3], 1)
#
# 2 ex| list: [2,3] hd: 2, tail: [3], acc: 1
# Vai cair no #sum2 -> acc = 1 + 2, sum([3], 3)
#
# 3 ex| list: [3] hd: 3, tail: [], acc: 3
# Vai cair no #sum2 -> acc = 3 + 3, sum([], 6)
#
# 4 ex| list: [], acc: 6
# Vai cair no #sum1 -> acc = 6
#
# Resultado da soma da lista foi '6'.
