
    
public with sharing class ContactListController {
    public ContactListController() {

    }
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContact(){
        return [SELECT  id,FirstName,LastName FROM Contact];
    }
}
