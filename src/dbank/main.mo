import Debug "mo:base/Debug";

actor DBank {
  var currentValue = 300;

  Debug.print("Hello World!");
  Debug.print(debug_show(currentValue));
}