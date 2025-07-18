defmodule BasicData do
  @moduledoc """
  Documentation for `BasicData`.
  """
  import Bitwise

  require Integer

  @doc """
  Hello world.

  ## Examples

      iex> ElixirLearn.hello()
      :world

  """
  def int_and_float() do
    # 整数
    a = 1
    b = 2
    c = a + b
    IO.puts("c: #{c}")

    # 位运算例子
    # 文档：https://hexdocs.pm/elixir/1.18.4/Bitwise.html
    x = 5         # 二进制: 101
    y = 3         # 二进制: 011

    and_result = x &&& y   # 按位与: 001 -> 1
    or_result = x ||| y    # 按位或: 111 -> 7
    xor_result = Bitwise.bxor(x, y) # 按位异或: 110 -> 6
    left_shift = x <<< 1   # 左移一位: 1010 -> 10
    right_shift = x >>> 1  # 右移一位: 10 -> 2

    IO.puts("x: #{x}, y: #{y}")
    IO.puts("x &&& y: #{and_result}")
    IO.puts("x ||| y: #{or_result}")
    IO.puts("Bitwise.bxor(x, y): #{xor_result}")
    IO.puts("x <<< 1: #{left_shift}")
    IO.puts("x >>> 1: #{right_shift}")

    # sin 函数示例
    angle = :math.pi() / 2  # 90度
    sin_val = :math.sin(angle)
    IO.puts("sin(π/2): #{sin_val}")

    # exp 指数函数示例
    exp_val = :math.exp(1)  # e^1
    IO.puts("exp(1): #{exp_val}")

    # power 函数示例
    pow_val = :math.pow(2, 3)  # 2 的 3 次方
    IO.puts("2^3: #{pow_val}")

    # 更多例子
    IO.puts("sin(0): #{:math.sin(0)}")
    IO.puts("exp(0): #{:math.exp(0)}")
    IO.puts("3^4: #{:math.pow(3, 4)}")

    # 浮点数
    f1 = 1.0
    f2 = :math.pi()
    f3 = f1 + f2
    IO.puts("f3: #{f3}, f2: #{Float.round(f2, 4)}")
    # https://hexdocs.pm/elixir/1.18.4/Float.html
  end

  def integer() do
    # https://hexdocs.pm/elixir/1.18.4/Integer.html
    IO.puts("Integer.is_odd(1): #{Integer.is_odd(1)}")
    IO.puts("Integer.is_even(1): #{Integer.is_even(1)}")
    IO.puts("Integer.is_odd(2): #{Integer.is_odd(2)}")
    IO.puts("Integer.is_even(2): #{Integer.is_even(2)}")
  end

  def str() do
    # 字符串
    # https://hexdocs.pm/elixir/1.18.4/String.html
    str1 = "Hello"
    str1 = str1 <> "World"
    IO.puts("str1: #{str1}")
  end
end

# 整数、浮点数、原子、字符串、元组、列表、映射、结构体等
