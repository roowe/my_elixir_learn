# ElixirLearn

## 新项目初始化

创建
```
>mix new elixir-learn
```

在`mix.exs`添加依赖，执行`mix deps.get`
```
{:aja, "~> 0.7.4"}
```
deps相关命令：https://hexdocs.pm/mix/Mix.Tasks.Deps.Clean.html


启动
```
iex -S mix
```

重新编译，并且自动reload
```
recompile() 
```

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `elixir_learn` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:elixir_learn, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/elixir_learn>.

