@isTest
public class TestRestrictContactByName {
    
    @isTest
    public static void checkContact(){
        Contact conRecord = new Contact(LastName = 'INVALIDNAME');
        Boolean exceptionThrown = false;
        
        try {
            insert conRecord;
        } catch (DmlException e) {
            exceptionThrown = true;
            System.assert(e.getMessage().contains('INVALIDNAME'), 
                          'Error message should mention INVALIDNAME');
        }
        
        System.assertEquals(true, exceptionThrown, 
                            'Expected DML exception was not thrown');
    }
}