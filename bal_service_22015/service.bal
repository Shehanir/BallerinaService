import ballerina/http;

type Person record {

 string name;

 int age;

 boolean isAdult;

};

configurable readonly & Person[] people = ?;

# A service representing a network-accessible API
# bound to port `9090`.
service / on new http:Listener(9090) {

    resource function get congig() returns string|Person[]|error {
        // Send a response back to the caller.

        return people;
       
    }
}
