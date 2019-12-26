class Contact{
  final int Id;
  final String name;
  final int accountNumber;

  Contact( this.Id,this.name, this.accountNumber);

  @override
  String toString() {
    return 'Contact{Id: $Id, name: $name, accountNumber: $accountNumber}';
  }


}