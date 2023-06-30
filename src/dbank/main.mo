import Debug "mo:base/Debug";

actor DBank {
  var currentValue = 300;
  currentValue := 100;

  let id = 76769107087736983;

  Debug.print("Hello World!");
  Debug.print(debug_show(currentValue));
  Debug.print(debug_show(id));

  //Private function by default!
  public func topUp(amount:Nat){
    currentValue +=amount;
    Debug.print(debug_show(currentValue));
  };

  public func withdraw(amount:Nat){
    let tempValue:Int = currentValue - amount;
    if (tempValue>=0){
      currentValue -=amount;
      Debug.print(debug_show(currentValue));
    }else{
      Debug.print("Not enough money!");
    };
    

  };

  //topUp();

}

// What is Orthogonal Persistence?
// What is the difference between Orthogonal Persistence and Object Persistence?
/* Orthogonal persistence is */
