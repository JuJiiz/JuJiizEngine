library jujiiz_engine;

class JuJiizEngine {
  static final JuJiizEngine _instance = JuJiizEngine._internal();

  static JuJiizEngine get instance => _instance;

  factory JuJiizEngine() {
    return _instance;
  }

  JuJiizEngine._internal();
}
