var dbConfig = {  
  "server": "",
  "user": "",
  "password": "",
  "database": "",
  "pool": {
    "max": 10,
    "min": 4,
    "idleTimeoutMillis": 30000
  }
};

module.exports = { dbConfig: dbConfig };
