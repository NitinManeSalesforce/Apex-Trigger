public class AccountTriggerHandler{

    public static Void CreateContactwithNameOfAccount(list<account> accNewList){
        list<contact> conToUpdate = new list<contact>();
        for(account acc: accNewList){
            contact con = new contact();
            con.LastName= acc.name;
            con.accountid = acc.id;
            conToUpdate.add(con);
        }
        if(!conToUpdate.isEmpty()){
            insert conToUpdate;
        }
    }
}