// this if for Chinese bold font, without which, Chinese character won't bold
#set text(font: "Source Han Serif SC")
#import "@preview/cetz:0.4.2"
我这里内容的顺序是老师上课的顺序，不是书本的顺序。所以页码标记至关重要

直积在书本p11页有讲

定理1.3 就单纯想说明上极限只要求有无穷项，但是下极限却要求从某一项以后的所有项都要满足
p11例8 老师有讲，但是我认为没有比较记录。因为他说的和书本没什么区别，只是更加详细了。我不是高中生了，所以我不会记录这段内容


引入基数是为了在无限的情况下两个集合比大小
人的常识总是认为
$A > B$
$A = B$
$A < B$
这三件事情有一件是一定发生的。那是当然了，毕竟数量可以直接数出来
但是这三件事情中的一件要一定发生。需要满足 axiom of choice 和 well-ordering theorem

$overline(overline(A)) = overline(overline(B)) <=> 存 在 A 到 B 的 一 一 映 射$




p13
思考题
1. 设 $f: bold(RR)-> bold(RR), 记 f_1(x)=f(x),f_n (x)=f(f_(n-1)(x)) (n=2,3,dot.op dot.op dot.op). 若 存 在 n_0 ,使 得 f_(n_0)(x)=x ,则 f$ 是$bold(RR) 到 f(bold(RR))$ 上的一一映射

证明：
要证明一一映射，就得证明单射和满射

单射：如果不单射，则存在 $x_1 != x_2$ 使得 $f_n (x_1) = f_n (x_2)$

当 $n$ > $n_0$ 时
$ f(x_1) = x_1 $
$ f(x_2) = x_2 $

而这与不单射冲突，所以单射

满射：即证明f(x) 可以映射回 x

$because f_n_0 (x) = f_n_0 ( f_(n_0-1)(x) )$

$令 f_(n_0-1)(x) = y$

$则 f_n_0 (y) = x$

所以满射






2. 不存在 $Q$ 上的连续函数f, 它在无理数集 $RR \\ QQ$ 上是一一映射，而在 $QQ$ 上则不是一一映射
证明： 连续函数要么单调，要么不单调。如果单调。那么在有理数集上就双射了，不满足在有理数上不是双射这个条件。所以这个函数肯定不是单调的。既然不是单调的，那么就肯定有最值
$a,b in QQ, f(a) = f(b)$ 这个是满足在QQ 上不是一一映射。根据Rolle's Theorem，极值点左边一个无理数 x1 的值肯定可以在极值点右边找到对因一个x2 使得 x1 = x2
这里 x2 不能是无理数，因为x2 如果是无理数的话就和无理数单射冲突了，所以这里 x2 必须得是有理数
但是在这个区间中，有理数的势是远小于无理数的势的。所以总是有无理数找不到对应的有理数。但是这个无理数总是需要有东西对应。所以只能对因一个无理数，和单射冲突

3. $f:X->Y$ 是满射当且仅当对任意的真子集 $B subset Y$ 有 $f(f^(-1)(B)) = B$

先证明单射:
如果不是单射，那么我们可以在B中找到两个数 x1, x2
使得 $f(x_1) = f(x_2)$
但是 $f^(-1)(f(x_1))$ 就会对应两个值了，要么 x1 要么 x2 所以和$f^(-1)(f(B)) = B$ 矛盾，得到$f(x)$ 是单射

再证明满射

如果 $f(x)$ 不是满射，我们取 $A = Y \\ B$
既然不是满射，我们可以得到 $forall y in A$
$f^(-1)(y) in X$
不妨令 $y_1 in A$ 则 $f^(-1)(y_1) = x_1, x_1 in A$
由于不满射，所以 $f(x_1) = y_2, y_2 in B$
即 $f^(-1)(f(y_1)) = y_2, y_1 in A, y_2 in B$ 直接和后面的矛盾了。所以 $f: X -> Y$ 是满射

// QUES:
但是我整个写完，也没感觉证明这个单射的必要

老师在讲这道题之前还讨论了几个有意思的问题

$f: RR -> RR \
A_i subset RR \
f lr(( limits(union.big)_(i in N) A_i), size: #50%) = limits(union.big)_(i in N) f(A_i)$ \
这个东西成立吗？
只要f是一个映射，这个结论一定成立。
可以证明一下。要证明两个集合相等。就是要证明两个集合互为子集
老师说是$f lr(( limits(union.big)_(i in N) A_i), size: #50%) supset limits(union.big)_(i in N) f(A_i)$
容易证明，那么我们就先说明左边包含右边
因为可以把右边拆出来，每一个$f(A_i)$ 都被 $f lr(( limits(union.big)_(i in N) A_i), size: #50%)$ 包含，所以它们的并，肯定也被包含
那么反过来呢？

//QUES: 这就是我不懂的地方了，为什么是存在y
存在$y in limits(union.big)_(i in N) f(A_i)$
一定能找到一个 $x$ 使得 $x in limits(union.big)_(i in N) A_i$
当 $x in A_i$ 时，对应的 $y in f(A_i)$ 而 $f(A_i) in limits(union.big)_(i in N) f(A_i)$

但是这个交集的结论转成交集就不一定成立了
对任意的$A,B subset X, 有 f(A inter B)＝f(A) inter f(B)$
可以让左边交为空，而右边有交集。
而，如果想要这个等式可以成立。只要满足f 是单射就行了，这就是第4题的$i i$ 想告诉我们的

好，现在继续看思考题第4 题。老师在第４题前讲这些内容就是为了第４题做铺垫的
这里由$i -> i i$ 其实条件过强了。其实只要满足f 是单射就可以证明了。

首先，我们可以得到的一个结论就是
$f(A inter B) subset f(A) inter f(B)$
这个是无论是否单射都能成立的。只要是个映射，都能成立
我先把这个的结论证明一下。
let $ y in f(A inter B) $ this means there exists an $x in A inter B$ such that $ y=f(x) $
since $x in A$, we know $y = f(x) in f(A)$
since $x in B$, we know $y = f(x) in f(B)$
Because $y$ is in both $f(A)$ and $f(B)$, we have $ y in f(A) inter f(B) $
Therefore, $f(A inter B) subset f(A) inter f(B)$ is always true \
其实就是说，不管从左边取哪一个元素，那个元素一定可以在右边找到。在windows上写中文太痛苦了。我以后会尽量用英文和符号来表达。除非由大段的文字要写
好，要说明两边相等，我们还需要证明右边是左边的子集。
老师的说法不好。不如我下面说的$i i i$ 的反证法清晰。直接看我$i i i$ 中用反证法说明的。如果单射，那么一定是从两个集合中取到相同的数，而这个相同的数的集合就是A与 B 的交集
由此$i -> i i$ 就被证明了
$i i i$ 这里可以直接使用$i i$ 的结论 \
Of course, you can prove by contradiction. If the right side is not $diameter$ \
When you say $y in f(A) inter f(B)$, this still means there's an $a in A$ and an $b in B$  with $f(a) = y and f(b) = y$ \
Because the function is injective, we know that $a$ and $b$ must be the same elemen. \
Therefore, the single pre-image $x$ must belong to both $A$ and $B$, which means $x in A inter B$.

这个$i v$ 其实更加好证明了 \
$B \\ A = (B \\ A) inter X$ \
$f(B) \\ f(A) = (f(B) \\ f(A)) inter Y$ \
直接就可以套用$i i$ 中的式子
这个从$i v -> i$ 其实也是可以直接反证法，如果不是单射，这个等式就不成立了。\
最后可以总结一下。一般这种互相成立的都是$i -> i i -> i i i -> i v -> i$ 这样证明一圈下来，不用两两互相证明。因为效果是一样的。
满射其实在这里面一点用都没有


定理1.5 *(Cantor-Bernstein定理)*  若集合$X$与$Y$ 的某个真自己对等，$Y$与 $X$ 的某个真子集对等，则$X~Y$\
这个定理说明了
$overline(overline(X)) <= overline(overline(Y))$\
$overline(overline(X)) >= overline(overline(Y))$\
$overline(overline(X)) = overline(overline(Y))$ \
这三个等式，一定会有一个发生
这里一个是有势，一个是这里用的是 $<= 与 >=$ \
如果这里使用的是 $< 与 >$ 就不行
这个定理说的就是
$overline(overline(X)) < overline(overline(Y))$\
$overline(overline(X)) > overline(overline(Y))$\
这两件事情是一定不可能同时发生的
这个和这两件事情一定有一件会发生是两回事

如果\
$overline(overline(X)) <= overline(overline(Y))$\
$overline(overline(X)) >= overline(overline(Y))$\
这两件事情同时发生了，那么说明 \
$overline(overline(X)) = overline(overline(Y))$ \

在证明 Cantor-Bernstein定理之前，我们需要证明
引理1.4
p15
引理1.4 若有
可以直接分解,不使用 Cantor-Bernstein 来证明
老师的方法就是交替链，但是我个人认为老师说的不好。没说明白为什么总是能够找到这个映射。这应该是需要用到不动点来说明的。或者用夏的教材里面的方法

我现在用不动点先证明一遍
因为题目是存在，所以我们的目标就是找到这么一个函数。
这个题目条件满足Knaster–Tarski 定理，所以可以找到那么一个函数，使得 \
$f(S) = X \\ g(Y \\ f(S))$


现在证明定理1.5
老师的证明方法和书本的方案不同。我这里说一下老师的证明方案。
令\
$x_0 subset.neq X$ \
$y_0 subset.neq Y$ \ \
// #stack(
//   line(length: 180pt, stroke: 1.5pt),
//   spacing: 40pt,
//   line(length: 180pt, stroke: 1.5pt),
// )

#cetz.canvas({
  import cetz.draw: *
  cetz.decorations.flat-brace((60pt, 0), (330pt, 0), name: "x0")
  content("x0.content", $x_0$)
  line((0, 0), (330pt, 0), stroke: (paint: black, thickness: 2pt), name: "X")
  content((350pt, 0), $X$)
  cetz.decorations.flat-brace((0pt, 0), (60pt, 0), name: "x1", flip: true)
  content("x1.content", $x_1$, name: "x1content")

  line((0, -80pt), (330pt, -80pt), stroke: (paint: black, thickness: 2pt), name: "Y")
  content((350pt, -80pt), $Y$)
  cetz.decorations.flat-brace((70pt, -80pt), (330pt, -80pt), name: "y0", flip: true)
  content("y0.content", $y_0$)
  cetz.decorations.flat-brace((70pt, -80pt), (120pt, -80pt), name: "y1")
  content("y1.content", $y_1$, name: "y1content")
  line("x1content", "y1content", mark: (end: "straight"), name: "f")
  content("f", anchor: "south", padding: 2pt, text("f", style: "italic", weight: "bold"))

  cetz.decorations.flat-brace((60pt, 0), (120pt, 0), name: "x2", flip: true)
  content("x2.content", $x_2$, name: "x2content")
  line("y1content", "x2content", mark: (end: "straight"), name: "g")
  content("g", anchor: "west", padding: 2pt, text("g", weight: "bold", style: "italic"))
})






1.14 幂集
#let scr(it) = text(features: ("ss01",), box($cal(it)$))
$scr(P)$

这个例一有点抽象
如果$A subset B$ 那么 $f(A) subset f(B)$ 难道不是一定成立的吗？直接把 B看成 A 并上余集 不就好了
直接就是 $A union A^c = B$ and $f(A) subset (f(A) union f(A^c) )$
感觉这个条件给了和没一样
但是我问了ai 说是集合的映射和函数的映射是不一样的，在幂集上是从集合到集合的映射。
// QUES:
这个S 我直观上知道是对的，这个东西会需要专门说明是对的吗？
这个证明看懂了.我之只能说值得多看几遍

思考题：
5.
第一个单射直接用x1 x2 让他们对应的y相同，那么g(y) 唯一，所以x1 = x2
这个满射也很容易证明。在X中找一个点，不在g 的值域上，使得映射不成立就好了


1.15
对等关系



$A ~ B =>? A union C ~ B union C$

only if $C inter A = diameter, C inter B = diameter$

$A ~ B =>? A inter C tilde.op B inter C$






p17
3. $若 A subset B 且 A tilde.op ( A union C )，试 证 明 B tilde.op (B union C)．$

$B union C = B union (C backslash B)$

$B = A union (B backslash A)$

$A union C = A union (A backslash C)$

$therefore B union C = A union (B backslash A) union C backslash B$

$because B union C = (B backslash A) union A union C backslash B$

$because C backslash B$

关于集合大小的讨论，看老师视频




例10 还是不会证明

定理1.10 的证明，我并不满意,这只能说明，他这种排法不行，没能证明其他的排法不行
1.12 的证明我不是很能理解，先记下来吧


p19 例10 的证明里面用到了有理数的稠密性







可数和可列看书本p20，例10上面那句话


// 这个是前面的序的部分，不是正式的页码
书本 p11
他这里例一，为什么有这个结论
// TODO: 为什么　要要使用函数列的一致收敛来保证极限运算和积分运算的次序可以交换
书本 p11
md 这个论文在第93卷，不在第78卷书上的标记是有误的
他这个例2为什么上积分和下积分不同，难道无理数就是比有理数小吗？

13页的这个 V.Volterra 做出的可微函数是哪一个
同一元这个我也不理解
