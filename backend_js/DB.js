const {Pool, Client} = require('pg')
class DB{
  pool;
  constructor(user, host, database, password, port){
    this.pool = new Pool({
      user: user,
      host: host,
      database: database,
      password: password,
      port: port,
    });
  }

  async login(email, password){
    return await this.pool.query(`SELECT PASSWORD FROM USERS where email='${email}'`)
    .then(dump => {
      var golden_pw = dump.rows[0].password;
      console.log(golden_pw);
      if(password==golden_pw){
        console.log("password same");
        return 1;
      }
      else{
        if(dump != null){
          console.log("wrong password");
          return 0;
        }
      }
    })
    .catch(e => {
      console.log("some error with database");
      return -1;
    })
  }
}

module.exports.DB = DB;