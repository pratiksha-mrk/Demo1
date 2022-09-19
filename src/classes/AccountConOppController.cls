public class AccountConOppController {
    
    public string accName;
    public Integer accEmployee;
    public string conName{get; set;}
    public string conEmail{get; set;}
    public  string oppName{get; set;}
    public integer oppAmount{get; set;}
    
    public  AccountConOppController(){
        
    }
    
    public void saveTheRecord(){
        Account a = new Account(Name = accName, NumberOfEmployees = accEmployee);
        insert a;
        
        Contact c = new Contact(LastName = conName, Email = conEmail, AccountId = a.id);
        insert c;
        
        Opportunity o = new Opportunity(Name = oppName, Amount = oppAmount, AccountId=a.Id, StageName = 'Prospecting', CloseDate = system.today());
        insert o;
   
    }
    
    public void setAccName(String a){
        accName = a;
    }
    
    public String getaccName(){
        return accName;
    }
    
    public void setaccEmployee(Integer a){
        accEmployee = a;   
    }
    
    public integer getaccEmployee(){
        return accEmployee;
    }
    



}