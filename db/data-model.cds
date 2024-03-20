namespace my.abc;

entity Books {
  key ID : Integer;
  title  : String;
  stock  : Integer;
}

entity Student{
  key rollNo : UUID;
  name : String;
  phone : Integer;
}

entity Orders{
  key orderID : String;
  productName :String;
  quantity :Integer;
  price :Integer;
}