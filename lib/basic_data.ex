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
  def int_and_float_demo() do
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

    a = 2
    b = 1
    c1 = max(a, b)
    c2 = min(a, b)
    IO.puts("c1: #{c1}, c2: #{c2}")

    # https://hexdocs.pm/elixir/1.18.4/Integer.html
    IO.puts("Integer.is_odd(1): #{Integer.is_odd(1)}")
    IO.puts("Integer.is_even(1): #{Integer.is_even(1)}")
    IO.puts("Integer.is_odd(2): #{Integer.is_odd(2)}")
    IO.puts("Integer.is_even(2): #{Integer.is_even(2)}")

    IO.inspect(Integer.digits(123, 2), label: "Integer.digits(123, 2)")
    IO.inspect(Integer.digits(111, 10), label: "Integer.digits(111, 10)")

    IO.inspect(Integer.parse("111", 10), label: "Integer.parse")
  end

  def tuple_demo() do
    # 元组
    # https://hexdocs.pm/elixir/1.18.4/Tuple.html
    tuple1 = {1, 2, 3}
    IO.puts("tuple1: #{inspect(tuple1)}")
    IO.puts("tuple1[2]: #{elem(tuple1, 2)}") #从0开始
    tuple1 = put_elem(tuple1, 1, 10)
    IO.puts("new tuple1: #{inspect(tuple1)}")
    IO.puts("tuple_size: #{inspect(tuple_size(tuple1))}")
  end

  def atom_demo() do
    # 原子
    # https://hexdocs.pm/elixir/1.18.4/Atom.html
    atom1 = :apple
    IO.puts("atom1: #{inspect(atom1)}")
  end

  def list_demo() do
    # 列表
    # https://hexdocs.pm/elixir/1.18.4/List.html
    list1 = [1, 2, 3]
    IO.puts("list1: #{inspect(list1)}")
    IO.puts("list1: #{inspect([1,2]++[3,4])}")
    IO.puts("list1: #{inspect([1,2]--[2,3])}")

    ans = List.foldl([5, 5], 10, fn x, acc -> x + acc end)
    IO.puts("List.foldl ans: #{ans}")

    ans = List.keyfind([a: 1, b: 2], :a, 0)
    IO.puts("List.keyfind ans: #{inspect(ans)}")
  end

  @doc """
  演示变量重新绑定 vs 不可变性
  """
  def variable_rebinding_demo() do
    IO.puts("=== 变量重新绑定 vs 不可变性演示 ===")

    # 1. 变量重新绑定 - 这是允许的
    x = 1
    IO.puts("第一次绑定: x = #{x}")

    x = 2  # 重新绑定到新值
    IO.puts("重新绑定后: x = #{x}")

    x = x + 1  # 基于当前值重新绑定
    IO.puts("再次重新绑定: x = #{x}")

    # 2. 不可变性 - 一旦创建，值就不能改变
    original_list = [1, 2, 3]
    IO.puts("原始列表: #{inspect(original_list)}")

    # 我们可以重新绑定变量名到新的列表
    new_list = [0 | original_list]  # 在头部添加元素
    IO.puts("新列表: #{inspect(new_list)}")
    IO.puts("原始列表仍然不变: #{inspect(original_list)}")

    # 3. 字符串的不可变性
    original_string = "Hello"
    IO.puts("原始字符串: #{original_string}")

    # 重新绑定变量名到新字符串
    new_string = original_string <> " World"
    IO.puts("新字符串: #{inspect(new_string)}")
    IO.puts("原始字符串仍然不变: #{inspect(original_string)}")

    # 4. 在函数中演示 - 使用匿名函数
    IO.puts("\n=== 在函数中演示（使用匿名函数）===")

    # 在函数内部定义匿名函数
    process_data = fn list ->
      # 这个匿名函数接收一个列表，但不会修改原始列表
      new_list = list ++ [4, 5]
      IO.puts("匿名函数内部创建的新列表: #{inspect(new_list)}")
      IO.puts("original_string: #{original_string}")
      # 原始列表在这个函数中是不可变的
      new_list
    end

    # 调用匿名函数
    result = process_data.(original_list)
    IO.puts("匿名函数返回结果: #{inspect(result)}")
    IO.puts("函数调用后，原始列表仍然不变: #{inspect(original_list)}")

    # 5. 模式匹配中的重新绑定
    IO.puts("\n=== 模式匹配中的重新绑定 ===")
    {a, b} = {10, 20}
    IO.puts("模式匹配后: a=#{a}, b=#{b}")

    # 在同一个模式匹配中，变量不能重复出现
    # {a, a} = {30, 30}  # 这会成功，因为值相同
    # {a, a} = {30, 40}  # 这会失败，因为值不同

    # 6. 在循环中演示
    IO.puts("\n=== 在循环中演示 ===")
    for i <- 1..3 do
      IO.puts("循环中的 i: #{i}")
      # 每次迭代，i 都被重新绑定到新的值
    end

    # 7. 不可变性的好处
    IO.puts("\n=== 不可变性的好处 ===")
    user1 = %{name: "Alice", age: 25}
    user2 = %{user1 | age: 26}  # 创建新映射，而不是修改原映射

    IO.puts("user1: #{inspect(user1)}")
    IO.puts("user2: #{inspect(user2)}")
    IO.puts("user1 和 user2 是不同的映射: #{user1 !== user2}")
  end



  def keyword_demo() do
    # 关键字列表
    # https://hexdocs.pm/elixir/1.18.4/Keyword.html


    keyword1 = [a: 1, b: 2]
    IO.puts("keyword1: #{inspect(keyword1)}")
    IO.puts("keyword1: #{inspect(keyword1[:a])}")
    IO.puts("keyword1: #{inspect(keyword1[:b])}")
    IO.puts("keyword1: #{inspect(keyword1[:c])}")

    # 当关键字列表作为函数的最后一个参数传递时，可以省略关键字列表周围的方括号。【建议还是显性写出来最后一个参数】

    ans = String.split("1-0", "-", [trim: true, parts: 2]) === String.split("1-0", "-", trim: true, parts: 2)
    IO.puts("ans: #{ans}")

  end

  def bang_function_demo() do
    # 感叹号函数(Bang Functions)演示
    # 感叹号(!)是Elixir中的重要命名约定，表示该函数在失败时会抛出异常

    IO.puts("=== 感叹号函数(Bang Functions)演示 ===")

    # 1. 普通函数 vs 感叹号函数的对比
    IO.puts("\n1. 普通函数 vs 感叹号函数:")

    # 普通函数返回 {:ok, result} 或 {:error, reason}
    case File.read("non_existent_file.txt") do
      {:ok, content} -> IO.puts("文件内容: #{content}")
      {:error, reason} -> IO.puts("普通函数 File.read 失败: #{reason}")
    end

    # 感叹号函数直接返回结果或抛出异常
    try do
      content = File.read!("non_existent_file.txt")
      IO.puts("文件内容: #{content}")
    rescue
      File.Error -> IO.puts("感叹号函数 File.read! 抛出异常")
    end

    # 2. 常见的感叹号函数示例
    IO.puts("\n2. 常见的感叹号函数示例:")

    # String.to_integer vs String.to_integer!
    case Integer.parse("123") do
      {num, ""} -> IO.puts("Integer.parse(\"123\"): #{num}")
      :error -> IO.puts("Integer.parse 失败")
    end





    # 3. Map.get vs Map.get!
    IO.puts("\n3. Map.get vs Map.get!:")

    my_map = %{name: "Alice", age: 25}

    # Map.get 返回值或nil
    name = Map.get(my_map, :name)
    missing = Map.get(my_map, :missing_key)
    IO.puts("Map.get(my_map, :name): #{inspect(name)}")
    IO.puts("Map.get(my_map, :missing_key): #{inspect(missing)}")

    # Map.fetch 返回 {:ok, value} 或 :error
    case Map.fetch(my_map, :name) do
      {:ok, value} -> IO.puts("Map.fetch(my_map, :name): #{inspect(value)}")
      :error -> IO.puts("Map.fetch 失败")
    end

    # Map.fetch! 返回值或抛出异常
    try do
      name = Map.fetch!(my_map, :name)
      IO.puts("Map.fetch!(my_map, :name): #{inspect(name)}")
    rescue
      KeyError -> IO.puts("Map.fetch! 抛出 KeyError")
    end

    try do
      missing = Map.fetch!(my_map, :missing_key)
      IO.puts("这行不会执行")
    rescue
      KeyError -> IO.puts("Map.fetch!(my_map, :missing_key) 抛出 KeyError")
    end

    # 4. List.first vs List.first!
    IO.puts("\n4. List.first vs List.first!:")

    list = [1, 2, 3]
    empty_list = []

    # List.first 返回值或nil
    first1 = List.first(list)
    first2 = List.first(empty_list)
    IO.puts("List.first([1, 2, 3]): #{inspect(first1)}")
    IO.puts("List.first([]): #{inspect(first2)}")


    # 5. 感叹号函数的使用场景
    IO.puts("\n5. 感叹号函数的使用场景:")
    IO.puts("- 当你确信操作会成功时使用感叹号函数")
    IO.puts("- 当你希望失败时程序立即停止时使用感叹号函数")
    IO.puts("- 感叹号函数让代码更简洁，因为不需要处理错误情况")
    IO.puts("- 但要小心使用，因为它们会导致程序崩溃")

    # 6. 自定义感叹号函数示例
    IO.puts("\n6. 自定义感叹号函数示例:")

    # 定义普通函数
    divide_safe = fn a, b ->
      if b == 0 do
        {:error, "除数不能为零"}
      else
        {:ok, a / b}
      end
    end

    # 定义感叹号函数
    divide_unsafe = fn a, b ->
      if b == 0 do
        raise ArithmeticError, "除数不能为零"
      else
        a / b
      end
    end

    # 使用普通函数
    case divide_safe.(10, 2) do
      {:ok, result} -> IO.puts("divide_safe(10, 2): #{result}")
      {:error, reason} -> IO.puts("divide_safe 失败: #{reason}")
    end

    case divide_safe.(10, 0) do
      {:ok, result} -> IO.puts("divide_safe(10, 0): #{result}")
      {:error, reason} -> IO.puts("divide_safe(10, 0) 失败: #{reason}")
    end

    # 使用感叹号函数
    try do
      result = divide_unsafe.(10, 2)
      IO.puts("divide_unsafe!(10, 2): #{result}")
    rescue
      ArithmeticError -> IO.puts("divide_unsafe! 抛出异常")
    end

    try do
      result = divide_unsafe.(10, 0)
      IO.puts("这行不会执行")
    rescue
      ArithmeticError -> IO.puts("divide_unsafe!(10, 0) 抛出 ArithmeticError")
    end

    IO.puts("\n=== 总结 ===")
    IO.puts("感叹号函数的约定:")
    IO.puts("1. 成功时直接返回结果")
    IO.puts("2. 失败时抛出异常而不是返回错误元组")
    IO.puts("3. 让代码更简洁，但需要谨慎使用")
    IO.puts("4. 通常与对应的非感叹号函数成对出现")
  end

  def map_demo() do
    # 映射
    # https://hexdocs.pm/elixir/1.18.4/Map.html
    # 对比，https://hexdocs.pm/elixir/1.18.4/keywords-and-maps.html
    map1 = %{a: 1, b: 2}
    IO.puts("map1: #{inspect(map1)}")
    IO.puts("map1: #{inspect(map1[:a])} #{inspect(map1.a)}")

    map2 = %{map1 | :a => "three"}
    IO.puts("map1: #{inspect(map2)}")
  end

  def struct_demo() do
    # 结构体
    struct1 = %Player{name: "Alice"}
    IO.puts("struct1: #{inspect(struct1)}")
    IO.puts("struct1: #{inspect(Player.may_attend_after_party(struct1))}")
    IO.puts("struct1: #{inspect(Player.print_vip_badge(struct1))}")
  end

  def str_demo() do
    # 字符串，本质是二进制
    # https://hexdocs.pm/elixir/1.18.4/String.html
    str1 = "Hello"
    str1 = str1 <> "World"
    IO.puts("str1: #{str1}")
    charlist1 = ~c"abc" # 字符列表
    IO.puts("charlist1: #{inspect(charlist1)}")

    IO.puts("len String.length=#{String.length("中文")}, byte_size=#{byte_size("中文")}")
  end

  def json_demo() do
    # https://hexdocs.pm/elixir/1.18.4/JSON.html
    {:ok, ans1} = JSON.decode("[null,123,\"string\",{\"key\":\"value\"}]")
    IO.puts("decode ans1: #{inspect(ans1)}")

    ans2 = JSON.encode!(%{a: 1, b: 2})
    IO.puts("encode ans2: #{inspect(ans2)}")

  end

  def cond_demo() do
    a = 5
    b = 2
    if a > b do
      IO.puts("a > b")
    else
      IO.puts("a <= b")
    end

    # 如果不是，毕竟绕，不建议使用unless
    unless a < b do
      IO.puts("a >= b")
    else
      IO.puts("a < b")
    end

    x = 10
    cond do
      x < 0 ->
          IO.puts("负数")
        IO.puts("负数")
      x == 0 ->
        IO.puts("零")
          IO.puts("零")
      x > 0 -> IO.puts("正数")
    end

    value = {:ok, 42}
    case value do
      {:ok, num} -> IO.puts("成功，值为 #{num}")
      {:error, reason} -> IO.puts("失败，原因：#{reason}")
      _ -> IO.puts("未知结果")
    end

  end

  def pipe_demo(a) do
    # 管道操作符
    a
    |> IO.inspect(label: "a")
    |> String.upcase()
    |> IO.inspect(label: "a")
    |> String.reverse()
    |> IO.inspect(label: "a")
    |> String.length()
    |> IO.inspect(label: "a")

  end
end

# 整数、浮点数、原子、字符串、元组、列表、映射、结构体等
