# Erlang LeetCode 练习计划

## 目标
通过 LeetCode 练习题重新学习和巩固 Erlang 编程技能，重点练习函数式编程、递归、模式匹配和列表处理。

---

## 推荐题目列表

### 1. 递归与分治类

| 题号 | 题目名 | 难度 | 链接 | 适合 Erlang 点 |
|------|--------|------|------|----------------|
| 21 | 合并两个有序链表 | 简单 | [https://leetcode.cn/problems/merge-two-sorted-lists/](https://leetcode.cn/problems/merge-two-sorted-lists/) | 递归、链表处理 |
| 206 | 反转链表 | 简单 | [https://leetcode.cn/problems/reverse-linked-list/](https://leetcode.cn/problems/reverse-linked-list/) | 递归、链表操作 |
| 104 | 二叉树的最大深度 | 简单 | [https://leetcode.cn/problems/maximum-depth-of-binary-tree/](https://leetcode.cn/problems/maximum-depth-of-binary-tree/) | 递归、树遍历 |
| 226 | 翻转二叉树 | 简单 | [https://leetcode.cn/problems/invert-binary-tree/](https://leetcode.cn/problems/invert-binary-tree/) | 递归、树操作 |
| 112 | 路径总和 | 简单 | [https://leetcode.cn/problems/path-sum/](https://leetcode.cn/problems/path-sum/) | 递归、树遍历 |

### 2. 列表与数组处理

| 题号 | 题目名 | 难度 | 链接 | 适合 Erlang 点 |
|------|--------|------|------|----------------|
| 1 | 两数之和 | 简单 | [https://leetcode.cn/problems/two-sum/](https://leetcode.cn/problems/two-sum/) | 列表、Map 处理 |
| 88 | 合并两个有序数组 | 简单 | [https://leetcode.cn/problems/merge-sorted-array/](https://leetcode.cn/problems/merge-sorted-array/) | 列表合并 |
| 283 | 移动零 | 简单 | [https://leetcode.cn/problems/move-zeroes/](https://leetcode.cn/problems/move-zeroes/) | 列表操作 |
| 350 | 两个数组的交集 II | 简单 | [https://leetcode.cn/problems/intersection-of-two-arrays-ii/](https://leetcode.cn/problems/intersection-of-two-arrays-ii/) | 列表交集 |
| 136 | 只出现一次的数字 | 简单 | [https://leetcode.cn/problems/single-number/](https://leetcode.cn/problems/single-number/) | 列表处理、位运算 |

### 3. 字符串处理

| 题号 | 题目名 | 难度 | 链接 | 适合 Erlang 点 |
|------|--------|------|------|----------------|
| 344 | 反转字符串 | 简单 | [https://leetcode.cn/problems/reverse-string/](https://leetcode.cn/problems/reverse-string/) | 字符串、递归 |
| 242 | 有效的字母异位词 | 简单 | [https://leetcode.cn/problems/valid-anagram/](https://leetcode.cn/problems/valid-anagram/) | 字符串处理 |
| 14 | 最长公共前缀 | 简单 | [https://leetcode.cn/problems/longest-common-prefix/](https://leetcode.cn/problems/longest-common-prefix/) | 字符串比较 |

### 4. Map/Set/去重

| 题号 | 题目名 | 难度 | 链接 | 适合 Erlang 点 |
|------|--------|------|------|----------------|
| 217 | 存在重复元素 | 简单 | [https://leetcode.cn/problems/contains-duplicate/](https://leetcode.cn/problems/contains-duplicate/) | Map 使用 |
| 349 | 两个数组的交集 | 简单 | [https://leetcode.cn/problems/intersection-of-two-arrays/](https://leetcode.cn/problems/intersection-of-two-arrays/) | Set 操作 |

### 5. 递归/回溯

| 题号 | 题目名 | 难度 | 链接 | 适合 Erlang 点 |
|------|--------|------|------|----------------|
| 46 | 全排列 | 中等 | [https://leetcode.cn/problems/permutations/](https://leetcode.cn/problems/permutations/) | 递归、回溯 |
| 78 | 子集 | 中等 | [https://leetcode.cn/problems/subsets/](https://leetcode.cn/problems/subsets/) | 递归、组合 |

### 6. 并发/多任务思想（可用 Erlang 进程模拟）

| 题号 | 题目名 | 难度 | 链接 | 适合 Erlang 点 |
|------|--------|------|------|----------------|
| 1195 | 交替打印字符串 | 中等 | [https://leetcode.cn/problems/fizz-buzz-multithreaded/](https://leetcode.cn/problems/fizz-buzz-multithreaded/) | 进程通信 |
| 1114 | 按序打印 | 简单 | [https://leetcode.cn/problems/print-in-order/](https://leetcode.cn/problems/print-in-order/) | 进程同步 |

---

## 练习建议

### 第一阶段：基础语法巩固
1. 从简单题目开始：1, 344, 217, 136
2. 重点练习：列表操作、模式匹配、递归思维
3. 熟悉 Erlang 的不可变数据结构和函数式编程范式

### 第二阶段：递归与数据结构
1. 链表题目：21, 206
2. 树题目：104, 226, 112
3. 重点练习：递归函数设计、模式匹配在递归中的应用

### 第三阶段：算法思维
1. 回溯题目：46, 78
2. 字符串处理：242, 14
3. 重点练习：复杂递归、状态管理

### 第四阶段：并发思维（可选）
1. 多线程模拟题目：1195, 1114
2. 重点练习：Erlang 进程模型、消息传递

---

## Erlang 解题技巧

### 1. 递归思维
- 将问题分解为更小的子问题
- 使用模式匹配处理边界条件
- 利用尾递归优化性能

### 2. 列表处理
- 使用 `[H|T]` 模式匹配列表头部和尾部
- 利用 `lists` 模块的辅助函数
- 注意列表的不可变性

### 3. 数据结构选择
- 使用 Map 进行快速查找
- 使用 Set 进行去重和集合操作
- 使用元组存储固定数量的数据

### 4. 模式匹配
- 充分利用 Erlang 强大的模式匹配能力
- 使用 guard 子句进行条件判断
- 通过模式匹配简化代码逻辑

---

## 学习资源

- [Erlang 官方文档](https://www.erlang.org/doc)
- [Erlang 中文社区](https://erlang-china.org/)
- [Learn You Some Erlang](http://learnyousomeerlang.com/)

---

> 建议每完成一道题目后，尝试用不同的 Erlang 特性来解决，比如递归 vs 尾递归、列表推导式 vs 递归等，这样可以更好地理解 Erlang 的各种编程范式。 