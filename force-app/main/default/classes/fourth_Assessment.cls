@RestResource(urlMapping='/api/Account/*')
global class fourth_Assessment {

    @Httpget
    global static Account getDetails()
    {
        RestRequest req=RestContext.request;
        RestResponse res=RestContext.response;
        Account result =[Select id,Name from Account where Industry='Technology'];
        System.debug(result);
        return result;

    }
}