import Debug "mo:base/Debug";

actor DBank {
  var currentValue = 300;
  currentValue := 100;

  let id = 76769107087736983;

  Debug.print("Hello World!");
  Debug.print(debug_show(currentValue));
  Debug.print(debug_show(id));

  //Private function by default!
  public func topUp(){
    currentValue +=1;
    Debug.print(debug_show(currentValue));
  };

  //topUp();

}