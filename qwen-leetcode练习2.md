# Erlang LeetCode 练习指南

重新学习 Erlang 的最佳 LeetCode 题目推荐

## 1. 列表操作和递归基础

- **[21. 合并两个有序链表](https://leetcode.cn/problems/merge-two-sorted-lists/)** - 练习列表递归合并
- **[206. 反转链表](https://leetcode.cn/problems/reverse-linked-list/)** - 熟悉尾递归
- **[83. 删除排序链表中的重复元素](https://leetcode.cn/problems/remove-duplicates-from-sorted-list/)** - 模式匹配练习
- **[203. 移除链表元素](https://leetcode.cn/problems/remove-linked-list-elements/)** - 列表过滤

## 2. 模式匹配经典题

- **[136. 只出现一次的数字](https://leetcode.cn/problems/single-number/)** - XOR 操作，Erlang 的位运算很直观
- **[268. 丢失的数字](https://leetcode.cn/problems/missing-number/)** - 数学运算和列表处理
- **[169. 多数元素](https://leetcode.cn/problems/majority-element/)** - 计数和比较

## 3. 尾递归优化练习

- **[70. 爬楼梯](https://leetcode.cn/problems/climbing-stairs/)** - 动态规划的尾递归实现
- **[509. 斐波那契数](https://leetcode.cn/problems/fibonacci-number/)** - 经典尾递归例子
- **[118. 杨辉三角](https://leetcode.cn/problems/pascals-triangle/)** - 列表生成

## 4. Erlang 特色的数据结构题

- **[344. 反转字符串](https://leetcode.cn/problems/reverse-string/)** - 二进制操作
- **[387. 字符串中的第一个唯一字符](https://leetcode.cn/problems/first-unique-character-in-a-string/)** - maps 模块练习
- **[383. 赎金信](https://leetcode.cn/problems/ransom-note/)** - 字符计数

## 5. 进阶并发思维（可选）

- **[1114. 按序打印](https://leetcode.cn/problems/print-in-order/)** - 虽然 LeetCode 不支持 Erlang 并发，但可以思考进程间通信的设计

## 学习建议

1. 从第1类开始，重点体会 Erlang 的递归思维
2. 多使用模式匹配替代条件判断
3. 优先使用尾递归而非普通递归
4. 熟练掌握 lists 模块的常用函数
5. 练习 binary 和 list 的相互转换

---
*建议按顺序练习，逐步找回 Erlang 的编程感觉*