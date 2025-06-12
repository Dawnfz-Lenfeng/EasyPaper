#import "/template.typ": *

#show: project.with(
  title: "EasyPaper 模板使用示例",
  author: "张三",
  date: auto,
  abstract: [
    本文档展示了 EasyPaper 模板的主要功能，包括题目框、解答框、三线表格、数学公式等学术组件。
  ],
  keywords: ("Typst", "模板", "学术写作"),
)

= 基本功能

EasyPaper@EasyPaper 是基于 SimplePaper@SimplePaper 改进的模板，具有单文件设计、系统字体兼容、学术组件丰富等特点。

== 文本格式

支持 *粗体*、_斜体_ 和 `inline code`。列表功能：
- 无序列表项
- 嵌套项目
  - 子项目

有序列表：
+ 第一步
+ 第二步
+ 第三步

/ 定义: 你可以定义一个术语，并给出解释。




== 代码块

```python
def factorial(n):
    return 1 if n <= 1 else n * factorial(n-1)
print(factorial(5))  # 输出: 120
```

= 学术组件

== 题目与解答

#problem[
  求 $f(x) = x^2 - 4x + 3$ 的最小值。
]

#solution[
  配方得：
  $
    f(x) = (x-2)^2 - 1
  $

  当 $x = 2$ 时，函数取最小值 $-1$。
]

== 数学公式

重要公式会自动编号：
$
  integral_0^1 x^2 dif x = frac(x^3, 3) ]_0^1 = frac(1, 3)
$ <eq:integral>

辅助公式不编号：
$
  sin^2(x) + cos^2(x) = 1
$

偏微分示例：
$
  pardiff(u, t) = alpha nabla^2 u
$

== 表格功能

#show table: three-line-table

#figure(
  table(
    columns: 3,
    [项目], [数值], [单位],
    [长度], [10.5], [cm],
    [质量], [2.3], [kg],
    [温度], [25.0], [°C],
  ),
  caption: [实验数据表],
) <tab:data>

下面的文字是引用功能，可以引用 @eq:integral 和 @tab:data。支持外部#link("https://typst.app")[链接]和脚注#footnote[这是脚注内容]。

= 结论

本模板提供了完整的学术写作功能，适用于报告、作业和笔记撰写。主要特色包括题目解答框、三线表格、公式编号和交叉引用等功能。

#bibliography("ref.bib")
