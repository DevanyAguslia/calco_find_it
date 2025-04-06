enum NavigationRoute {
  welcomeRoute("/welcome"),
  homeRoute("/"),
  loginRoute("/login"),
  registerRoute("/register"),
  roleUserRoute("/user-role"),
  meditationHomeRoute("/meditation-home");

  const NavigationRoute(this.name);
  final String name;
}
