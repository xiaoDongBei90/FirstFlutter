# first_flutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Navigator

push 将设置的router信息推送到Navigator上，实现页面跳转。
of 主要是获取 Navigator最近实例的好状态。
pop 导航到新页面，或者返回到上个页面。
canPop 判断是否可以导航到新页面
maybePop 可能会导航到新页面
popAndPushNamed 指定一个路由路径，并导航到新页面。
popUntil 反复执行pop 直到该函数的参数predicate返回true为止。
pushAndRemoveUntil 将给定路由推送到Navigator，删除先前的路由，直到该函数的参数predicate返回true为止。
pushNamed 将命名路由推送到Navigator。
pushNamedAndRemoveUntil 将命名路由推送到Navigator，删除先前的路由，直到该函数的参数predicate返回true为止。
pushReplacement 路由替换。
pushReplacementNamed 这个也是替换路由操作。推送一个命名路由到Navigator，新路由完成动画之后处理上一个路由。
removeRoute 从Navigator中删除路由，同时执行Route.dispose操作。
removeRouteBelow 从Navigator中删除路由，同时执行Route.dispose操作，要替换的路由是传入参数anchorRouter里面的路由。
replace 将Navigator中的路由替换成一个新路由。
replaceRouteBelow 将Navigator中的路由替换成一个新路由，要替换的路由是是传入参数anchorRouter里面的路由。
