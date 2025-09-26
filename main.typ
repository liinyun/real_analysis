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
对任意的$A,B subset X, 有 f(A inter.big B)＝f(A) inter.big f(B)$
可以让左边交为空，而右边有交集。只要这个函数不是单射就好了

好，现在继续看思考题第4 题。老师在第４题前讲这些内容就是为了第４题做铺垫的
这里由$i -> i i$ 其实条件过强了。其实只要满足f 是单射就可以证明了。

首先，我们可以得到的一个结论就是
$f(A inter.big B) subset f(A) inter.big f(B)$
这个是无论是否单射都能成立的。只要是个映射，都能成立
我先把这个的结论证明一下。
let $ y in f(A inter.big B) $ this means there exists an $x in A inter B$ such that $ y=f(x) $
since $x in A$, we know $y = f(x) in f(A)$
since $x in B$, we know $y = f(x) in f(B)$
Because $y$ is in both $f(A)$ and $f(B)$, we have $ y in f(A) inter f(B) $
Therefore, $f(A inter B) subset f(A) inter f(B)$ is always true \
其实就是说，不管从左边取哪一个元素，那个元素一定可以在右边找到。在windows上写中文太痛苦了。我以后会尽量用英文和符号来表达。除非由大段的文字要写
由此$i -> i i$ 就被证明了
$i i i$ 这里可以直接使用$i i$ 的结论 \
Of course, you can prove by contradiction. If the right side is not $diameter$
When you say "y in f(A) inter f(B) ", this still means there's an $x_1 in A$ and an $x_2 in B$  with $f(x_1) = y and f(x_2) = y$ \
Because the function is injective, we know that $x_1$ and $x_2$ must be the same elemen. \
Therefore, the single pre-image $x$ must belong to both $A$ and $B$, which means $x in A inter B$.

这个$i v$ 其实更加好证明了 \
$B \\ A = (B \\ A) inter X$ \
$f(B) \\ f(A) = (f(B) \\ f(A)) inter Y$ \
直接就可以套用$i i$ 中的式子
这个从$i v -> i$ 其实也是可以直接反证法，如果不是单射，这个等式就不成立了。

1.14 幂集
//TODO: 这个还有别的方法吗？
#let scr(it) = text(
  features: ("ss01",),
  box($cal(it)$),
)
$scr(P)$

1.15
对等关系  

$A ~ B =>? A union.big C ~ B union.big C$

only if $C inter A = diameter and C inter B = diameter$

$A ~ B =>? A inter.big C tilde.op B inter.big C$

p17
3. $若 A subset B 且 A tilde.op ( A union.big C )，试 证 明 B tilde.op (B union.big C)．$

$B union.big C = B union.big (C backslash B)$

$B = A union.big (B backslash A)$

$A union.big C = A union.big (A backslash C)$

$therefore B union.big C = A union.big (B backslash A) union.big C backslash B$

$because B union.big C = (B backslash A) union.big A union.big C backslash B$

$because C backslash B$




可数和可列是同一件事




书本 p11
他这里例一，为什么有这个结论
// TODO: 为什么　要要使用函数列的一致收敛来保证极限运算和积分运算的次序可以交换
书本 p11
md 这个论文在第93卷，不在第78卷书上的标记是有误的
他这个例2为什么上积分和下积分不同，难道无理数就是比有理数小吗？

13页的这个 V.Volterra 做出的可微函数是哪一个
同一元这个我也不理解
