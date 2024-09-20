db = new Mongo().getDB("mydatabase");

db.students.insertMany([
    { studentCode: "S001", firstName: "Kla", lastName: "ztk", age: 20, email: "kla@example.com" },
    { studentCode: "S002", firstName: "Ton", lastName: "zTk", age: 20, email: "ton@example.com" }
]);
