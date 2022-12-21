@isTest
public with sharing class StarWarsApiTest {
   @isTest
    
   private static void getLukeTest(){
        Test.StartTest();
        Test.setMock(HttpCalloutMock.class, new StarwarsMock());
        List<Account> shouldBeNoAccts = [SELECT id,name FROM Account];
        System.assertNotEquals(shouldBeNoAccts.isEmpty(),false);    

        StarWarsApi.getLuke();
        Test.StopTest();

        List<Account> shouldBeAccts = [SELECT id,name FROM Account];
        System.assertEquals(shouldBeAccts.isEmpty(),false);
    
    

    }
}
