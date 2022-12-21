public with sharing class StarwarsMock implements HttpCalloutMock {
    public StarwarsMock() {

    }
public HttpResponse respond(HttpRequest request){
    HttpResponse response = new HttpResponse();
    response.setStatusCode(201);
    return response;
   
    }
}
