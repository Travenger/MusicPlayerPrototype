class CreateUserReq {
  final String username;
  final String email;
  final String password;

  CreateUserReq({
    required this.username,
    required this.email,
    required this.password
  });
}