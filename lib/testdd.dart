enum carType{SUV,Eco,ATS}

class car{

  bool isExist=true;

  carType carstyle;

  car({required this.carstyle});


}

int calculate(int n1,int n2,Function cal){
  return cal(n1,n2);
}

int add (int n,int m){
  return n+m;
}

int mul(int n,int m){
  return n*m;
}

void slowDrive(){
  print('Slow drive');
}

void fastDrive(){
  print('fast drive');
}

class CarDrive{
  Function drive;
  CarDrive({required this.drive});
}

void main(){
  CarDrive dd=CarDrive(drive: slowDrive);
  dd.drive();
  dd.drive=fastDrive;
  dd.drive();

  car mt=car(carstyle: carType.ATS);
  print(mt.carstyle);
  mt.isExist==true ?print('done'):print('no');
  int result=calculate(3, 5, add);
  print(result);

  int result1=calculate(5, 5, mul);
  print(result1);


}