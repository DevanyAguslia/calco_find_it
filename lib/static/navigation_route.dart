enum NavigationRoute {
  welcomeRoute("/welcome"),
  homeRoute("/"),
  loginRoute("/login"),
  registerRoute("/register");

  const NavigationRoute(this.name);
  final String name;
}
