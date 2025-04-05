enum NavigationRoute {
  welcomeRoute("/welcome"),
  homeRoute("/"),
  loginRoute("/login");

  const NavigationRoute(this.name);
  final String name;
}
