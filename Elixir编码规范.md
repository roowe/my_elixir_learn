# Elixir编码规范

## 1. 命名规范
- **模块名**：使用大驼峰（CamelCase），如 `MyApp.ModuleName`。
- **函数名、变量名**：使用小写字母和下划线（snake_case），如 `my_function`、`user_id`。
- **常量**：Elixir中常量通常用模块属性（如 `@moduledoc`、`@my_const`），同样使用snake_case。
- **私有函数**：以 `p_` 或 `_` 前缀标识（如 `p_helper/1` 或 `_do_something/2`），但更推荐直接用 `defp`。

## 2. 代码结构与逻辑规范
- **每个模块只负责单一职责**，避免臃肿。
- **函数应短小精悍**，每个函数只做一件事。
- **避免深层嵌套**，优先使用管道操作符（`|>`）提升可读性。
- **优先使用不可变数据结构**，避免副作用。
- **尽量使用模式匹配和守卫**，提升代码健壮性。
- **错误处理**：优先使用 `with`、`case`、`try` 等结构进行显式错误处理。

## 3. 注释与文档
- **模块和公共函数必须有文档注释**（`@moduledoc`、`@doc`）。
- **复杂逻辑应有适当注释**，但避免过度注释显而易见的代码。

## 4. 代码风格
- **每行不超过 100 字符**。
- **运算符两侧留空格**，如 `a + b`。
- **管道符 `|>` 单独成行**，提升可读性。
- **文件末尾保留一个空行**。

## 5. 测试规范
- **每个公共API都应有对应测试**。
- **测试用例命名应清晰表达测试目的**。
- **使用 `ExUnit` 框架，测试文件放在 `test/` 目录下**。

## 6. 其他建议
- **遵循社区最佳实践**，如 [Elixir Style Guide](https://github.com/christopheradams/elixir_style_guide/blob/master/README.md)。
- **定期使用 `mix format` 格式化代码**。 
- [Elixir Style Guide中文翻译](https://github.com/geekerzp/elixir_style_guide/blob/master/README-zhCN.md)。