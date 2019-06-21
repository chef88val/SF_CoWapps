public class mySerialize {

//Deserializamos la response. String => Map
public static Map < String, Object > mySerializeObj(String response) {
    return ((Map < String, Object > ) JSON.deserializeUntyped(response));
}
//Deserializamos la response. String => Map
public static   Object  mySerializeObj2(String response) {
    return (  Object   ) JSON.deserializeUntyped(response);
}
//Serializamos la response. Map => String
public static String mySerializeJson(Map < String, Object > response, String tag) {
    return JSON.serialize(response.get(tag));
}

//Metodo para añadir cada objeto de la ultima tag a una lista para devolver y tratar la informacion
public static List < Map < String, Object >> mySerializeAddObject(Map < String, Object > response, String tag) {
    //Creamos el resultado de la operacion. Es lo que devuleve el metodo
    List < Map < String, Object >> myMaps = new List < Map < String, Object >> ();

    try { //Obtenemos la info/ el objeto de la ultima tag
        List < Object > myMapObjects = (List < Object > ) response.get(tag);
        //Recorremos el array de la ultima tag
        for (Object obj: myMapObjects) {
            //Añadimos a la lista los objetos.
            myMaps.add((Map < String, Object > ) obj);
        }
        System.debug('contactingModes' + myMaps[0].get('contactingModes'));
        System.debug('customerAddresses' + myMaps[0].get('customerAddresses'));
        System.debug('customerDetails' + myMaps[0].get('customerDetails'));
        System.debug('customerId' + myMaps[0].get('customerId'));
        System.debug('legalId' + myMaps[0].get('legalid'));
    } catch (Exception exc) {
    }
    return myMaps;

}
//Metodo para añadir cada objeto de la ultima tag a una lista para devolver y tratar la informacion
public static List <Object > mySerializeAddObject2(  Object  response) {
    //Creamos el resultado de la operacion. Es lo que devuleve el metodo
    List <Object > myMaps = new List <Object > ();

    try { //Obtenemos la info/ el objeto de la ultima tag
        List < Object > myMapObjects = new List < Object >{response};
        //Recorremos el array de la ultima tag
        for (Object obj: myMapObjects) {
            //Añadimos a la lista los objetos.
            myMaps.add(obj);
        }
        /*System.debug('contactingModes' + myMaps[0].get('contactingModes'));
        System.debug('customerAddresses' + myMaps[0].get('customerAddresses'));
        System.debug('customerDetails' + myMaps[0].get('customerDetails'));
        System.debug('customerId' + myMaps[0].get('customerId'));
        System.debug('legalId' + myMaps[0].get('legalid'));*/
        System.debug('myMaps'+myMaps);
    } catch (Exception exc) {
    }    return myMaps;

}
//Metodo para serializar un objeto como el de GetCustomerList. Se pasa el response y un array de las keys
public static List < Map < String, Object >> mySerialize(String response, String[] tags) {
    String jobjSer;
    List < Map < String, Object >>  result = new List < Map < String, Object >> ();
    try {
        if (tags != null) {
            //Creamos el resultado de la operacion. Es lo que devuleve el metodo
           
            //Inicializamos el Map
            Map < String, Object > objSer = mySerializeObj(response);
            //Recorremos las tags para movernos por el JSON. La ultima tag es la que llama al metodo para añadir a una lista
            for (String tag: tags) {
                if (tag == tags[tags.size() - 1]) {
                    result = mySerializeAddObject(objSer, tag);
                } else {
                    jobjSer = mySerializeJson(objSer, tag);
                    objSer = mySerializeObj(jobjSer);
                }
            }
        } else {
            //Inicializamos el Map
             Object   objSer = mySerializeObj2(response);
            //Creamos el resultado de la operacion. Es lo que devuleve el metodo
            List <Object > resultNull = new List <Object > ();
            resultNull = mySerializeAddObject2(objSer);
            System.debug('resultNull'+resultNull);
            //System.debug('resultNull'+(List<Map<String, Object>>)resultNull);
            Map<String, Object> temp = new Map<String, Object>();
            temp.put('',resultNull);
            system.debug(temp);
            result.add(temp);
            //result=(List<Map<String, Object>>) resultNull;

        }
    } catch (Exception exc) {
        
    }
    System.debug('result'+result);
    return result;
}
}