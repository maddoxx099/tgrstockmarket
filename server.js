require("dotenv").config();
const express = require("express");
const path = require("path");
const bodyParser = require("body-parser");
const knex = require("knex");
const jwt = require("jsonwebtoken");
enableInsiderTrading=true;

const db = knex({
  client: "pg",
  connection: {
    host: "127.0.0.1",
    user: "postgres",
    password: process.env.dbpassword,
    database: "investors2",
  },
  debug:true,
});

function sleep(ms) {
  return new Promise((resolve) => setTimeout(resolve, ms));
}

const app = express();

let initialPath = path.join(__dirname, "public");
app.use(bodyParser.json());
app.use(express.static(initialPath));

app.get("/", (req, res) => {
  res.sendFile(path.join(initialPath, "index.html"));
});
app.get("/login", (req, res) => {
  res.sendFile(path.join(initialPath, "login.html"));
});
app.get("/register", (req, res) => {
  res.sendFile(path.join(initialPath, "register.html"));
});
app.get("/leaderboard", (req, res) => {
  res.sendFile(path.join(initialPath, "leaderboard.html"));
});
/*app.get("/leaderboard-money", (req, res) => {
  return db("users")
    .select(["money","totalstockvalue", "username"])
    .orderBy("money", "desc")
    .limit(15)
    .returning(["scores"])
    .then((data) => {
      res.json(data);
    })
    .catch((err) => {
      res.json(err);
    });
});*/
/*app.get("/leaderboard-totalstockvalue", (req, res) => {
  return db("users")
    .select(["totalstockvalue","money", "username"])
    .orderBy("totalstockvalue", "desc")
    .limit(15)
    .returning(["scores"])
    .then((data) => {
      res.json(data);
    })
    .catch((err) => {
      res.json(err);
    });
});*/
app.post("/leaderboard-money", (req, res) => {
  const {username}=req.body;
  if(username!=null){
  return db("users")
    .with('stuff',db("users").select(["totalstockvalue","profit","money", "username"])
    .rowNumber('position', function () {
      this.orderBy("money", "desc");
    })
    .returning(["scores"]))
    .select('*')
    .from('stuff')
    .where('position','<',60)
    .orWhere({
      username: username,
    })
    .then((data) => {
      res.json(data);
    })
    .catch((err) => {
      res.json(err);
    });
  }
  else{
    return db("users")
    .select(["money","profit","totalstockvalue", "username"])
    .orderBy("money", "desc")
    .limit(60)
    .returning(["scores"])
    .then((data) => {
      res.json(data);
    })
    .catch((err) => {
      res.json(err);
    });
  }
});
app.post("/leaderboard-totalstockvalue", (req, res) => {
  const {username}=req.body;
  if(username!=null){
  return db("users")
    .with('stuff',db("users").select(["totalstockvalue","profit","money", "username"])
    .rowNumber('position', function () {
      this.orderBy("totalstockvalue", "desc");
    })
    .returning(["scores"]))
    .select('*')
    .from('stuff')
    .where('position','<',60)
    .orWhere({
      username: username,
    })
    .then((data) => {
      res.json(data);
    })
    .catch((err) => {
      res.json(err);
    });
  }
  else{
    return db("users")
    .select(["totalstockvalue","profit","money", "username"])
    .orderBy("totalstockvalue", "desc")
    .limit(60)
    .returning(["scores"])
    .then((data) => {
      res.json(data);
    })
    .catch((err) => {
      res.json(err);
    });
  }
});
app.post("/leaderboard-profit", (req, res) => {
  const {username}=req.body;
  if(username!=null){
  return db("users")
    .with('stuff',db("users").select(["totalstockvalue","profit","money", "username"])
    .rowNumber('position', function () {
      this.orderBy("profit", "desc");
    })
    .returning(["scores"]))
    .select('*')
    .from('stuff')
    .where('position','<',60)
    .orWhere({
      username: username,
    })
    .then((data) => {
      res.json(data);
    })
    .catch((err) => {
      res.json(err);
    });
  }
  else{
    return db("users")
    .select(["money","profit","totalstockvalue", "username"])
    .orderBy("profit", "desc")
    .limit(60)
    .returning(["scores"])
    .then((data) => {
      res.json(data);
    })
    .catch((err) => {
      res.json(err);
    });
  }
});
app.get("/stock-values", (req, res) => {
  return db("stockvalues")
    .select(
      "r2_d2",
      "aden_skirata",
      "lesser_stormtrooper",
      "ysanne_isard",
      "victorie_talik",
      "eleventh_brother",
      "darth_vader",
      "chewbacca",
      "sergeant_kreel",
      "pt_1178",
      "unknown_valtorax_character",
      "third_brother",
      "second_sister",
      "fixer",
      "thirteenth_brother",
      "dexter_jettster",
      "cyan",
      "grand_admiral_piett",
      "unknown_stemmedaxis06_character",
      "fifth_brother",
      "maze",
      "rav_bralor",
      "epsilon",
      "zeb",
      "agent66",
      "wedge_antilles",
      "cipher9",
      "thrawn",
      "corran_horn",
      "agent_kallus",
      "sixth_sister",
      "chopper",
      "han_solo",
      "ackbar",
      "grand_inquisitor",
      "rex",
      "boba_fett",
      "sabe_nabierre",
      "luke_skywalker",
      "c3po",
      "airen_cracken",
      "strzalk",
      "ninth_sister",
      "ig_88b",
      "garrick_versio",
      "axis",
      "gideon",
      "fenn_shysa",
      "boss",
      "sabine_wren",
      "mara_jade",
      "alpha_17",
      "omega",
      "kal_skirata",
      "gallius_rex",
      "twelfth_brother",
      "eli_vanto",
      "saw_garrera",
      "wolffe",
      "lando_calrissian",
      "evaarla_mereel",
      "kyle_katarn",
      "carnor_jax",
      "mission_vao",
      "x2",
      "seventh_sister",
      "jan_ors",
      "scorch",
      "lumiya",
      "rahm_kota",
      "pellaeon",
      "leia_organa",
      "ghos_gin",
      "janitor",
      "satele",
      "mothma",
      "bo_katan",
      "bossk",
      "armstrong",
      "snake_zapal",
      "death_troopers",
      "nom_carver",
      "samuel_rodrigues",
      "mandalor_the_unwoke",
      "fox",
      "x_wing",
      "tie_fighter",
    "lastchapter")
    .orderBy("id","desc")
    .limit(10)
    .then((data) => {
      res.json(data);
    })
    .catch((err) => {
      res.json(err);
    });
});

app.post("/register-user", (req, res) => {
  const { username, password } = req.body;
  if (!username.length || !password.length) {
    res.json("Fill out all the fields");
  } else {
    db("users")
      .insert({
        username: username,
        password: password,
      })
      .returning(["username", "password"])
      .then((data) => {
        res.json(data[0]);
      })
      .catch((err) => {
        if (err.detail.includes("already exists")) {
          res.json("username already exists");
        }
      });
  }
});
app.get("/get-user-data", authenticateToken,(req, res) => {
  const  username = req.user.username;

  db.select(
    "money",
    "r2_d2",
    "aden_skirata",
    "lesser_stormtrooper",
    "ysanne_isard",
    "victorie_talik",
    "eleventh_brother",
    "darth_vader",
    "chewbacca",
    "sergeant_kreel",
    "pt_1178",
    "unknown_valtorax_character",
    "third_brother",
    "second_sister",
    "fixer",
    "thirteenth_brother",
    "dexter_jettster",
    "cyan",
    "grand_admiral_piett",
    "unknown_stemmedaxis06_character",
    "fifth_brother",
    "maze",
    "rav_bralor",
    "epsilon",
    "zeb",
    "agent66",
    "wedge_antilles",
    "cipher9",
    "thrawn",
    "corran_horn",
    "agent_kallus",
    "sixth_sister",
    "chopper",
    "han_solo",
    "ackbar",
    "grand_inquisitor",
    "rex",
    "boba_fett",
    "sabe_nabierre",
    "luke_skywalker",
    "c3po",
    "airen_cracken",
    "strzalk",
    "ninth_sister",
    "ig_88b",
    "garrick_versio",
    "axis",
    "gideon",
    "fenn_shysa",
    "boss",
    "sabine_wren",
    "mara_jade",
    "alpha_17",
    "omega",
    "kal_skirata",
    "gallius_rex",
    "twelfth_brother",
    "eli_vanto",
    "saw_garrera",
    "wolffe",
    "lando_calrissian",
    "evaarla_mereel",
    "kyle_katarn",
    "carnor_jax",
    "mission_vao",
    "x2",
    "seventh_sister",
    "jan_ors",
    "scorch",
    "lumiya",
    "rahm_kota",
    "pellaeon",
    "leia_organa",
    "ghos_gin",
    "janitor",
    "satele",
    "mothma",
    "bo_katan",
    "bossk",
      "armstrong",
      "snake_zapal",
      "death_troopers",
      "nom_carver",
      "samuel_rodrigues",
      "mandalor_the_unwoke",
      "fox",
      "x_wing",
      "tie_fighter",
    "profit" /* "achievements", */
  )
    .from("users")
    .where({
      username: username,
    })
    .then((data) => {
        res.json(data[0]);
    });
});
app.post("/login-user", (req, res) => {
  const { username, password } = req.body;

  db.select(
    "username",
    "money",
    "r2_d2",
    "aden_skirata",
    "lesser_stormtrooper",
    "ysanne_isard",
    "victorie_talik",
    "eleventh_brother",
    "darth_vader",
    "chewbacca",
    "sergeant_kreel",
    "pt_1178",
    "unknown_valtorax_character",
    "third_brother",
    "second_sister",
    "fixer",
    "thirteenth_brother",
    "dexter_jettster",
    "cyan",
    "grand_admiral_piett",
    "unknown_stemmedaxis06_character",
    "fifth_brother",
    "maze",
    "rav_bralor",
    "epsilon",
    "zeb",
    "agent66",
    "wedge_antilles",
    "cipher9",
    "thrawn",
    "corran_horn",
    "agent_kallus",
    "sixth_sister",
    "chopper",
    "han_solo",
    "ackbar",
    "grand_inquisitor",
    "rex",
    "boba_fett",
    "sabe_nabierre",
    "luke_skywalker",
    "c3po",
    "airen_cracken",
    "strzalk",
    "ninth_sister",
    "ig_88b",
    "garrick_versio",
    "axis",
    "gideon",
    "fenn_shysa",
    "boss",
    "sabine_wren",
    "mara_jade",
    "alpha_17",
    "omega",
    "kal_skirata",
    "gallius_rex",
    "twelfth_brother",
    "eli_vanto",
    "saw_garrera",
    "wolffe",
    "lando_calrissian",
    "evaarla_mereel",
    "kyle_katarn",
    "carnor_jax",
    "mission_vao",
    "x2",
    "seventh_sister",
    "jan_ors",
    "scorch",
    "lumiya",
    "rahm_kota",
    "pellaeon",
    "leia_organa",
    "ghos_gin",
    "janitor",
    "satele",
    "mothma",
    "bo_katan",
    "bossk",
      "armstrong",
      "snake_zapal",
      "death_troopers",
    "nom_carver",
    "samuel_rodrigues",
    "mandalor_the_unwoke",
    "fox",
    "x_wing",
    "tie_fighter",
    "profit"  
  )
    .from("users")
    .where({
      username: username,
      password: password,
    })
    .then((data) => {
      if (data.length) {
        //res.json(data[0]);
        const user = {username:username}
        const accessToken = jwt.sign(user,process.env.ACCESS_TOKEN_SECRET,{expiresIn:"15d"})
        res.json([data[0],{accessToken:accessToken}]);
      } else {
        res.json("username or password is incorrect");
      }
    });
});
function authenticateToken(req, res, next){
  const authHeader = req.headers['authorization'];
  const token = authHeader && authHeader.split(' ')[1]
  if (token == null) return res.sendStatus(401)
  jwt.verify(token,process.env.ACCESS_TOKEN_SECRET,(err,user)=>{
    if(err) return res.sendStatus(403)
    req.user = user
    next()
  })
}
app.post("/buy-stock",authenticateToken, (req, res) => {
  const username = req.user.username;
  let { name, amount } = req.body;
  amount = Math.abs(amount);
  const maxID = db.max("id").from("stockvalues");
  let flag = false;
  const date = new Date();
  if((date.getDay()==4 || (date.getDay()==3&&date.getHours()==23))&&!enableInsiderTrading){
    res.json("INSIDER TRADING FRAUD, WAIT FOR THE BATTLE TO END DUMBASS");
  }
  else{
  db.select(
    "r2_d2",
    "aden_skirata",
    "lesser_stormtrooper",
    "ysanne_isard",
    "victorie_talik",
    "eleventh_brother",
    "darth_vader",
    "chewbacca",
    "sergeant_kreel",
    "pt_1178",
    "unknown_valtorax_character",
    "third_brother",
    "second_sister",
    "fixer",
    "thirteenth_brother",
    "dexter_jettster",
    "cyan",
    "grand_admiral_piett",
    "unknown_stemmedaxis06_character",
    "fifth_brother",
    "maze",
    "rav_bralor",
    "epsilon",
    "zeb",
    "agent66",
    "wedge_antilles",
    "cipher9",
    "thrawn",
    "corran_horn",
    "agent_kallus",
    "sixth_sister",
    "chopper",
    "han_solo",
    "ackbar",
    "grand_inquisitor",
    "rex",
    "boba_fett",
    "sabe_nabierre",
    "luke_skywalker",
    "c3po",
    "airen_cracken",
    "strzalk",
    "ninth_sister",
    "ig_88b",
    "garrick_versio",
    "axis",
    "gideon",
    "fenn_shysa",
    "boss",
    "sabine_wren",
    "mara_jade",
    "alpha_17",
    "omega",
    "kal_skirata",
    "gallius_rex",
    "twelfth_brother",
    "eli_vanto",
    "saw_garrera",
    "wolffe",
    "lando_calrissian",
    "evaarla_mereel",
    "kyle_katarn",
    "carnor_jax",
    "mission_vao",
    "x2",
    "seventh_sister",
    "jan_ors",
    "scorch",
    "lumiya",
    "rahm_kota",
    "pellaeon",
    "leia_organa",
    "ghos_gin",
    "janitor",
    "satele",
    "mothma",
    "bo_katan",
    "bossk",
    "armstrong",
    "snake_zapal",
    "death_troopers",
    "nom_carver",
    "samuel_rodrigues",
    "mandalor_the_unwoke",
    "fox",
    "x_wing",
    "tie_fighter"
  )
    .from("stockvalues")
    .where("id", maxID)
    .then((data) => {
      for (let item of Object.entries(data[0])) {
        if (name == item[0]) {
          flag = true;
          let serverMoney;
          db.select("money", name)
            .from("users")
            .where({
              username: username,
            })
            .then((data) => {
              if (data.length) {
                let vals = Object.values(data[0]);
                serverMoney = Number(vals[0]);
                serverValue = vals[1];
                let actual = 0;
                if (amount * item[1] < serverMoney) {
                  actual = amount;
                } else {
                  actual = Math.floor(serverMoney / item[1]);
                  if (actual <= 0) {
                    res.json("Not enough money");
                    return;
                  }
                }
                db("users")
                  .where({
                    username: username,
                  })
                  .update("money", serverMoney - actual * item[1])
                  .update(item[0], serverValue + actual)
                  .returning("money",item[0])
                  .then((data) => {
                    res.json(data[0]);
                  })
                  .catch((err) => {
                    console.log(err);
                  });
              } else {
                res.json("username is incorrect");
              }
            });
        }
      }
      if (!flag) {
        res.json("Stock Name Not Found");
      }
    });
}
});
app.post("/sell-stock",authenticateToken, (req, res) => {
  const username = req.user.username;
  let { name, amount } = req.body;
  amount = Math.abs(amount);
  const maxID = db.max("id").from("stockvalues");
  let flag = false;
  const date = new Date();
  if((date.getDay()==4 || (date.getDay()==3&&date.getHours()==23))&&!enableInsiderTrading){
    res.json("INSIDER TRADING FRAUD, WAIT FOR THE BATTLE TO END DUMBASS");
  }
  else{
  db.select(
    "r2_d2",
    "aden_skirata",
    "lesser_stormtrooper",
    "ysanne_isard",
    "victorie_talik",
    "eleventh_brother",
    "darth_vader",
    "chewbacca",
    "sergeant_kreel",
    "pt_1178",
    "unknown_valtorax_character",
    "third_brother",
    "second_sister",
    "fixer",
    "thirteenth_brother",
    "dexter_jettster",
    "cyan",
    "grand_admiral_piett",
    "unknown_stemmedaxis06_character",
    "fifth_brother",
    "maze",
    "rav_bralor",
    "epsilon",
    "zeb",
    "agent66",
    "wedge_antilles",
    "cipher9",
    "thrawn",
    "corran_horn",
    "agent_kallus",
    "sixth_sister",
    "chopper",
    "han_solo",
    "ackbar",
    "grand_inquisitor",
    "rex",
    "boba_fett",
    "sabe_nabierre",
    "luke_skywalker",
    "c3po",
    "airen_cracken",
    "strzalk",
    "ninth_sister",
    "ig_88b",
    "garrick_versio",
    "axis",
    "gideon",
    "fenn_shysa",
    "boss",
    "sabine_wren",
    "mara_jade",
    "alpha_17",
    "omega",
    "kal_skirata",
    "gallius_rex",
    "twelfth_brother",
    "eli_vanto",
    "saw_garrera",
    "wolffe",
    "lando_calrissian",
    "evaarla_mereel",
    "kyle_katarn",
    "carnor_jax",
    "mission_vao",
    "x2",
    "seventh_sister",
    "jan_ors",
    "scorch",
    "lumiya",
    "rahm_kota",
    "pellaeon",
    "leia_organa",
    "ghos_gin",
    "janitor",
    "satele",
    "mothma",
    "bo_katan",
    "bossk",
      "armstrong",
      "snake_zapal",
      "death_troopers",
      "nom_carver",
      "samuel_rodrigues",
      "mandalor_the_unwoke",
      "fox",
      "x_wing",
      "tie_fighter"
  )
    .from("stockvalues")
    .where("id", maxID)
    .then((data) => {
      for (let item of Object.entries(data[0])) {
        if (name == item[0]) {
          flag = true;
          let serverMoney;
          db.select("money", name)
            .from("users")
            .where({
              username: username,
            })
            .then((data) => {
              if (data.length) {
                let vals = Object.values(data[0]);
                serverMoney = Number(vals[0]);
                serverValue = vals[1];
                let actual = 0;
                if (amount < serverValue) {
                  actual = amount;
                } else {
                  actual = serverValue;
                  if (actual <= 0) {
                    res.json("Nothing to sell");
                    return;
                  }
                }
                db("users")
                  .where({
                    username: username,
                  })
                  .update("money", serverMoney + actual * item[1])
                  .update(item[0], serverValue - actual)
                  .returning("money",item[0])
                  .then((data) => {
                    res.json(data[0]);
                  })
                  .catch((err) => {
                    console.log(err);
                  });
              } else {
                res.json("username is incorrect");
              }
            });
        }
      }
      if (!flag) {
        res.json("Stock Name Not Found");
      }
    });
}
});

app.listen(3000, (req, res) => {
  console.log("listening on port 3000.....");
});
