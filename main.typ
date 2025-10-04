// this if for Chinese bold font, without which, Chinese character won't bold
#set text(font: "Source Han Serif SC")
#let scr(it) = text(features: ("ss01",), box($cal(it)$))
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


5.设$f: X arrow.r Y, g: Y arrow.r X.$ 若对任意的 $x in X,$必有$g(f(x))=x$,则$f$是单射,$g$是满射 \
第一个单射直接用x1 x2 让他们对应的y相同，那么g(y) 唯一，所以x1 = x2
这个满射也很容易证明。在X中找一个点，不在g 的值域上，使得映射不成立就好了



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

现在证明定理1.5
老师的证明方法和书本的方案不同。我这里说一下老师的证明方案。\
老师的证明方法和郑维行的是一样的，他们的这个方法和夏道行的方法其实是同一个意思，
只是用的变量名字和画的图不同罢了\
程其襄和夏道行的是一样的。徐森林的第二种证法也是这个。\
徐森林的第一个其实就是我们现在这个周民强的方法，直接用了Banach 的结论\
我这里专门把这个证明重新写一遍，是因为我当时其实是有一个疑惑的。而解开这个疑惑的就是我下面这句:\
这个东西的证明最重要的是能够合理应用这两个对等。\
先把变量初始化一下 #emoji.face.lick \
$x_0 subset.neq X$ \
$y_0 subset.neq Y$ \

由题目给出的条件，我们定义两个双射 \
// 这个是真丑，距离太远了。只能使用move 强制修改位置。未来应该会添加padding，所以我不做别的修改了
$x_0 stretch(arrow.l.r, size: #4em)^f Y$\
$y_0 stretch(arrow.l.r, size: #4em)^g X$\


好，下面令\
$x_1 = X \\ x_0$

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
  cetz.decorations.flat-brace((60pt, -80pt), (330pt, -80pt), name: "y0", flip: true)
  content("y0.content", $y_0$)


  // y1
  cetz.decorations.flat-brace((60pt, -80pt), (120pt, -80pt), name: "y1")
  content("y1.content", $y_1$, name: "y1content")
  // x1 -> y1
  line("x1content", "y1content", mark: (end: "straight"), name: "g1")
  content("g1", anchor: "north-east", text("g", weight: "black"))


  // x2
  cetz.decorations.flat-brace((60pt, 0), (120pt, 0), name: "x2", flip: true)
  content("x2.content", $x_2$, name: "x2content")
  // y1 -> x2
  line("y1content", "x2content", mark: (end: "straight"), name: "f1")
  content("f1", anchor: "west", padding: 2pt, text("f", weight: "bold"))


  // y2
  cetz.decorations.flat-brace((120pt, -80pt), (180pt, -80pt), name: "y2")
  content("y2.content", $y_2$, name: "y2content")
  // x2 -> y2
  line("x2content", "y2content", mark: (end: "straight"), name: "g2")
  content("g2", anchor: "north-east", text("g", weight: "black"))
})
下面的我就不继续画了，等我什么时候成为typst 高手再说吧 \
我当时的疑惑在于从$y_1 arrow.r.bar x_2$ 这段，因为$y_1$ 这个时候是在$y_0$ 中的。
诶这个时候就会有小聪明会说了，我们上面不是有定义了一个映射了吗? \
$y_0 stretch(arrow.l.r, size: #8em)^g X$\
这不就说明 $y_1$ 可以映射到整个$X$ 上的某个区间了? \
对于这个看法，我只能说，你是对的!你非常敏锐，这不就说明$x_2$ 不一定会在$x_0$，也可能与$x_1$ 有交集。\
这就是我专门把这个题目自己写一遍证明的原因了。\
注意，我们其实是有两个双射，
我们还有一个\
$x_0 stretch(arrow.l.r, size: #8em)^f Y$\
这个双射可以让处于$Y$ 中的$y_1$ 映射到$x_0$ 上\
我当时的问题就是，为什么不使用 \
$y_0 stretch(arrow.l.r, size: #8em)^g X$\
这个映射，这个映射也是成立的吧?为什么不使用这个映射呢? \
这个映射成立，没有问题\
就是因为这个映射成立，所以我们其实可以得到将$y_1$ 双射到$X$ 上可以有别的区间，
不仅仅是现在的这个在$x_0$ 中的区间。
(当然，我现在只能找到$y_1$通过g 来对应到$x_1$，是一个$x_2$ 以外的区间。其他的我就真不知道怎么找了)\
但是。使用这个映射，无法得到我们希望得到的东西。所以我们不采用这个映射。\
仅此而已。
明明使用$f$ 是没有问题的，而且还可以得到我们想要的结论，为什么不用呢?\
至于详细证明什么我，我就不再写了，书上都有。\
不过这里我有一个东西没有思考清楚。夏道行讲了一个性质4$degree$，这个东西在别的教材中没说。
老师上课的时候是直接用的。夏说可以自己证明。但是我实在不知道怎么写这个证明。因为非常显然。

p17 思考题
1.设$A_1 subset A_2, B_1 subset B_2,$若$A_1 tilde.op B_1, A_2 tilde.op B_2$,试问:是否有
$(A_2 \\ A_1) tilde.op (B_2 \\ B_1)$ ?
这个是不对的，我想到的是\
$A_1 = N$\
$A_2 = {-1,-2,-3,N}$\
$B_1 = N$\
$B_2 = {-1,N}$\
老师给的例子是\
$A_1 ~ A_2 ~ 偶 数$\
$B_1 ~ 奇 数$\
$B_2 ~ 自 然 数$\

2.若$(A \\ B) tilde.op (B \\ A)$则$A tilde.op B$对吗？\
我第一个想到的证明是令\
$A = (A inter B) union (A \\ B)$\
$B = (A inter B) union (B \\ A)$\
但是这么看来，感觉这个好像是对的了。因为这个本来看起来就对，加上我找不到反例\
这里其实就用到了一个结论\
现在有三个集合A,B,C，现在A 与B 对等，能否得到这个结论？\
$A ~ B arrow.double A union C ~ B union C$\
当然是不能的。我们可以让$A = C = {1,2,3}$，让$B = {4,5,6}$，显然这个有限集的例子就是反例了\
但是我们可以通过添加条件使得这个对等，当C 与 A,B 都不相交的时候就是对的\
证明的时候，让A与B对等，然后C与自己对等就好了。\
//QUES: 但是我的问题在于，他这里证明的是不相交，对等是成立的。但是没有说明为什么不相交可以使对等成立。
//我不知道我表述清楚了没有。当然也可能是我的高考直觉在恶心我。

现在我们有了这个结论，也是分别对等就可以了。证明结束

//NOTE:这个是老师给的一个让我们思考的问题
$A ~ B =>? A inter C tilde.op B inter C$\

3. $若 A subset B 且 A tilde.op ( A union C )，试 证 明 B tilde.op (B union C)．$\
$B union C = B union (C backslash B)$\
$B = A union (B backslash A)$\
$A union C = A union (C backslash A)$\
$therefore B union C = A union (B backslash A) union (C backslash B)$\
$because B union C = (B backslash A) union A union (C backslash B)$\
$because C backslash B union A tilde.op A$ \
$therefore (B backslash A) union A union (C backslash B) tilde.op (B backslash A) union A tilde.op B$\
但是，问题的重点就是在于，为什么$A union (C backslash B) tilde.op A$\
老师没讲。\
好现在让我献上gemini 的证明
要证明对等，其实就是能够找到一一映射\
既然题目给出了两个对等关系，那么\
$A stretch(arrow.l.r, size: #3em)^"f" B$\
$A stretch(arrow.l.r, size: #3em)^"g" A union C$\
要证明$B = A union (B backslash A ) tilde.op (B union C) =
A union (B backslash A) union (C backslash B)$
其实就是证明\
$A union (B backslash A ) tilde.op
A union (B backslash A) union (C backslash B)$\
我们可以在B 中找到这两个映射。为什么会想到这么划分区间？
纯属是想要把g 这个映射用上。 \
#set math.cases(gap: 1em)
#show math.cases: math.display
因为$B = A union (B backslash A)$\
好，下面这步拆分很关键\
$B union C = A union C union (B backslash A)$\
所以很容易想到我们前面定义的两个双射。如果可以让B 中的$B backslash A$
与$B union C$ 中的 $B backslash A$ 对应，
B 中的A 与$B union C$ 中的 $A union C$对应的话，我们就可以建立从B
到$B union C$ 的双射了。\
这一看，诶。现在难道不就是嘛？前者直接自己映射自己，
后者直接用g 就可以了。\
但是这个划分方法是错误的。因为$B backslash A$ 与$A union C$ 是完全存在重叠的部分的。
重叠部分得同时映射到B中的A与$B backslash A$ 才可以保证一一对应\
所以这个映射方案是错误的。但是，通过观察，我们其实可以发现。\
B中$(B union C) backslash (A union C)$ 的部分其实可以映射到$B union C$中的
$(B union C) backslash (A union C)$
而B 中的A 可以继续映射到$B union C$ 中的$A union C$
不过这下，这两个区间就没有重复的地方了\
ai小丑的地方是直接说根据他的划分，交集应该为空。实际他根本没办法证明交集为空。
但是启发了我重新划分区间。这就对了\
主要按照老师的分法应该需要某个结论。类似 $C_1 subset C_2 subset C_3 ... subset C_n$\
如果 $A union C_n tilde A$ 则任意 i < n 有$A union C_i tilde A$



== 下面我会写一点零碎的东西。老师没怎么讲，但是书上有
1.14 幂集
$scr(P)$

这个例一有点抽象
如果$A subset B$ 那么 $f(A) subset f(B)$ 难道不是一定成立的吗？直接把 B看成 A 并上余集 不就好了
直接就是 $A union A^c = B$ and $f(A) subset (f(A) union f(A^c) )$
感觉这个条件给了和没一样
但是我问了ai 说是集合的映射和函数的映射是不一样的，在幂集上是从集合到集合的映射。
// QUES:
这个S 我直观上知道是对的，这个东西会需要专门说明是对的吗?\
对，这个S的存在是需要条件的。只是在这里，幂集满足了这个条件。
这个证明看懂了.我之只能说值得多看几遍




例10 还是不会证明

定理1.10 的证明，我并不满意,这只能说明，他这种排法不行，没能证明其他的排法不行
1.12 的证明我不是很能理解，先记下来吧


p20 例10 的证明里面用到了有理数的稠密性





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

== 现在我会一点也不按照老师的进度，而是直接按照周明强书中的顺序和自己的顺序写
我会选择这么做是因为我发现老师讲的很多东西其实就是不同教科书合在一起的内容。
所以我选择自己看不同的教科书。并且路上会自己查漏补全。
现在讲到18页了
我现在讲p20页的例9,这中间的内容自己看书
这个说是每一个$E_i$ 都是一个可列集，可列集的意思就是和N对等。这里$N^n$ 是指N的n 次笛卡尔积。\
所以$E_1 times E_2 times E_3 times ... times E_n = N^n$ 两个一一映射
为什么会用到素数?因为不同素数的n次幂是不会重复的。这样就能不重复的列出来了\
这样，我们可以建立这种对等关系:\
$E_1$ 既然和N 对等，那么自然就和$p_1^n$ 对等了，这里的n就是1,2,3,4...\
同理$E_2, E_3, E_4, ...$ 这样。
如此就建立了对等关系。因为这些素数和他们的幂都在N上，所以就和N 建立了对等关系。由此可列。
不过我真的不喜欢这个证明。我感觉没有用素数也能说清楚。我提这么一嘴就是为了说明一下这个素数干什么用的。\

p20 例子10
这个东西在周明强的书中没有证明。我现在先看郑维行的书，看完后再回来看这题

郑维行p10 第三章
为什么p12 页的例1一定要是闭区间?
因为开区间会导致只有一个元素吗？










