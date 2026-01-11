@isTest
public class TestVerifyDate {
    
    @isTest
    public static void testCheckDates(){
        Date d1 = Date.newInstance(2025, 9, 30);   // 30 Sept 2025
        Date d2 = Date.newInstance(2025, 10, 15);  // 15 Oct 2025 → within 30 days
        Date d3 = Date.newInstance(2025, 11, 30);  // 30 Nov 2025 → outside 30 days
        Date d4 = Date.newInstance(2025, 9, 15);   // 15 Sept 2025 → past date
        Date result1 = VerifyDate.CheckDates(d1, d2);
        System.assertEquals(d2, result1, 'Should return d2 when within 30 days');
        // Case 2: d3 is outside 30 days of d1 → expect end of Sept
        Date result2 = VerifyDate.CheckDates(d1, d3);
        System.assertEquals(Date.newInstance(2025, 9, 30), result2, 'Should return end of month when d2 is outside 30 days');
        // Case 3: d4 is in the past → expect end of Sept
        Date result3 = VerifyDate.CheckDates(d1, d4);
        System.assertEquals(Date.newInstance(2025, 9, 30), result3, 'Should return end of month when d2 is in the past');
    }
}