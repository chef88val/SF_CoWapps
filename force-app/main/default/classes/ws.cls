global class ws{
	webservice static List<String> llamada1(){
		List<String> listRet = new List<String>();
		List<Account> listAcc = [Select Id from Account];
		for(Account i : listAcc){
			listRet.add(i.Id);
		}
		return listRet;
	}
}