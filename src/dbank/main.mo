import Debug "mo:base/Debug";
import Nat "mo:base/Nat";
import Time "mo:base/Time";
import Float "mo:base/Float";


actor DBank {

  stable var currentValue: Float = 300;
  stable var startTime = Time.now();

  //Private function by default!
  public func topUp(amount:Float){
    currentValue +=amount;
    Debug.print(debug_show(currentValue));
  };

  public func withdraw(amount:Float){
    let tempValue:Float = currentValue - amount;
    if (tempValue>=0){
      currentValue -=amount;
      Debug.print(debug_show(currentValue));
    }else{
      Debug.print("Not enough money!");
    };
    
  };

  public query func showBalance(): async Float{
    return currentValue;
  };


  public func compound(){
    let currentTime = Time.now();
    let timeElapsedNs = currentTime - startTime;
    let timeElapsedS = timeElapsedNs / 1000000000;
    let interest = currentValue * (0.1 ** Float.fromInt(timeElapsedNs) );
    startTime:= currentTime;

  }



}

