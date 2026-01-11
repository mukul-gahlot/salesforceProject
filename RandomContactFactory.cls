public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer num, String lastName) {
        List<Contact> contactRecordList = new List<Contact>();
        
        for(Integer i = 0; i < num; i++) {
            Contact contactRecord = new Contact();
            contactRecord.FirstName = 'Test' + i; // use i without quotes
            contactRecord.LastName  = lastName;
            contactRecordList.add(contactRecord);
        }
        
        return contactRecordList;
    }
}