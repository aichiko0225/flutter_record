/// 自定义组件方法简介
/// 当Flutter提供的现有组件无法满足我们的需求，或者我们为了共享代码需要封装一些通用组件，这时我们就需要自定义组件。
/// 在Flutter中自定义组件有三种方式：通过组合其它组件、自绘和实现RenderObject。本节我们先分别介绍一下这三种方式的特点，后面章节中则详细介绍它们的细节。

/*
* 组合其它Widget
这种方式是通过拼装其它组件来组合成一个新的组件。例如我们之前介绍的Container就是一个组合组件，它是由DecoratedBox、ConstrainedBox、Transform、Padding、Align等组件组成。

在Flutter中，组合的思想非常重要，Flutter提供了非常多的基础组件，而我们的界面开发其实就是按照需要组合这些组件来实现各种不同的布局而已。
* */

/*
* 自绘
* 如果遇到无法通过现有的组件来实现需要的UI时，我们可以通过自绘组件的方式来实现，
* 例如我们需要一个颜色渐变的圆形进度条，而Flutter提供的CircularProgressIndicator
* 并不支持在显示精确进度时对进度条应用渐变色（其valueColor 属性只支持执行旋转动画时变化Indicator的颜色），
* 这时最好的方法就是通过自定义组件来绘制出我们期望的外观。我们可以通过Flutter中提供的CustomPaint和Canvas来实现UI自绘。
* */

