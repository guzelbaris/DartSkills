class Circle {
  double _pi=3.14;
  double? _diameter;

  Circle(double this._diameter);
  void set diameter(double diameter){
    this._diameter=diameter;
  }
  double get getdiameter =>this._diameter!;

  double Perimeter()=>(2.0*this._pi*this._diameter!);
  double Area()=>(this._pi*this._diameter!*this._diameter!);
  
}