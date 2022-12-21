public with sharing class StarWarsApi {
    

    @future(callout = true)
    public static void getLuke(){
        HttpRequest request = new HttpRequest();
        request.setMethod('GET');
        request.setEndpoint('https://swapi.dev/api/people/1');
        //request.setHeader('Content-Type','application/json');

        HttpResponse response = new Http().send(request);
        System.debug(response.getStatus());
        System.debug(response.getBody());
   Account acct = new Account();
   acct.name =String.valueof(response.getStatusCode());
   insert acct;
    }
}
