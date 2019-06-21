public class ParkLocator {
   
    public static String[] country(String country){

        ParkService.ParksImplPort ps = new ParkService.ParksImplPort();
        System.debug(ps.byCountry(country));
        return ps.byCountry(country);
        
    }
}