class Thermostat {
  double _temperature;
  Thermostat(this._temperature);

  set celsius(double temp) {
    if (temp < -30 || temp > 50)
      throw ArgumentError('Warning: Temperature out of range');
    else
      _temperature = temp;
  }

  double get celsius => _temperature;
  double get fahrenheit {
    return (((_temperature * 9) / 5) + 32);
  }
}

void main() {
  Thermostat th = Thermostat(-20);
  print(th.celsius);
  print(th.fahrenheit);

  th.celsius = 100;
  print(th.celsius);
  print(th.fahrenheit);
}
