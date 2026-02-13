let stockValues = [
  [
  [20,97],
  true,
  "arye_prays",
  0,
],
[
  [20,97],
  true,
  "jango_fett",
  0,
],
[
  [20,95],
  true,
  "satele_shan",
  0,
],
[
  [20,94],
  true,
  "revan",
  0,
],
[
  [20,93],
  true,
  "havok",
  0,
],
[
  [20,92],
  true,
  "count_dooku",
  0,
],
[
  [20,90],
  true,
  "anakin_skywalker",
  0,
],
[
  [20,85],
  true,
  "ahsoka_tano",
  0,
],
[
  [20,84],
  true,
  "asharad_hett",
  0,
],
[
  [20,83],
  true,
  "general_grievous",
  0,
],
[
  [20,82],
  true,
  "seloth",
  0,
],
[
  [20,82],
  true,
  "mereel_skirata",
  0,
],
[
  [20,81],
  true,
  "venku_kad_skirata",
  0,
],
[
  [20,80],
  true,
  "quinlan_vos",
  0,
],
[
  [20,79],
  true,
  "near_farr",
  0,
],
[
  [20,78],
  true,
  "evaarla_mereel",
  0,
],
[
  [20,75],
  true,
  "clarrarifufza",
  0,
],
[
  [20,75],
  true,
  "elizabeth_persche",
  0,
],
[
  [20,72],
  true,
  "darth_vorhn",
  0,
],
[
  [20,71],
  true,
  "wrecker",
  0,
],
[
  [20,71],
  true,
  "annalise_dimidium",
  0,
],
[
  [20,70],
  true,
  "plo_koon",
  0,
],
[
  [20,62],
  true,
  "ghos_gin",
  0,
],
[
  [20,60],
  true,
  "tallisibeth_enwandung_esterhazy",
  0,
],
[
  [20,60],
  true,
  "sevaronurudo",
  0,
],
[
  [20,59],
  true,
  "a_77_fordo",
  0,
],
[
  [20,59],
  true,
  "a_07_epsilon",
  0,
],
[
  [20,58],
  true,
  "belkrin_priest_wren",
  0,
],
[
  [20,58],
  true,
  "rc_5704_storm",
  0,
],
[
  [20,56],
  true,
  "rc_6008_goober",
  0,
],
[
  [20,55],
  true,
  "meisis_zerliss",
  0,
],
[
  [20,55],
  true,
  "cc_1359_obsidian",
  0,
],
[
  [20,54],
  true,
  "dryden_vos",
  0,
],
[
  [20,54],
  true,
  "the_singer",
  0,
],
[
  [20,52],
  true,
  "cc_5597_jesse",
  0,
],
[
  [20,51],
  true,
  "rc_1025_fuse",
  0,
],
[
  [20,50],
  true,
  "cc_0087_blitz",
  0,
],
[
  [20,45],
  true,
  "daybreak_axis",
  0,
],
[
  [20,42],
  true,
  "cc_2237_oddball",
  0,
],
[
  [20,40],
  true,
  "dagan_gera",
  0,
],
[
  [20,40],
  true,
  "ct_1614_hasser",
  0,
],
[
  [20,39],
  true,
  "raiden",
  0,
],
[
  [20,38],
  true,
  "cc_1178_sights",
  0,
],
[
  [20,37],
  true,
  "cc_1212_twelve",
  0,
],
[
  [20,36],
  true,
  "ty_rell",
  0,
],
[
  [20,30],
  true,
  "valire_ameile_tone",
  0,
],
[
  [20,17],
  true,
  "ct_2602_rhino_slayer",
  0,
],
[
  [20,12],
  true,
  "bb_c03_cothree",
  0,
],

];
//possibly add checkboxes for fraud and goat mode
/*let fraudNames = {"Gojo":"Go/Jo","Kashimo":"The Waffled One","Sukuna":"Fraudkuna","Yuta":"The Sneakiest","Maki":"Fem Toji","Yuji":"Punch and Kick Merchant","Higuruma":"Fodder 1","Kenjaku":"King of Recieving Backshots","Hakari":"Fodder 2","Nobara":"Haruta Victim","Megumi":"Potential Man","Uraume":"Glorified Freezer","Todo":"Useless CT Now"}
let goatNames = {"Gojo":"GOATjo","Kashimo":"KasHIMo","Sukuna":"GOATkuna","Yuta":"Wuta Oggoatsu","Maki":"HER","Yuji":"GOATji Himtadori","Higuruma":"HIMguruma","Kenjaku":"GOATjaku","Hakari":"HIMkari","Nobara":"HERbara","Megumi":"HIMgumi","Uraume":"HERaume","Todo":"GOATdo"}
function enableFraud(){
  console.log(document.querySelector('#fraudMode').checked)
}*/
let canvas = document.createElement("canvas");
canvas.width = 800;
const oneTick = canvas.width / 10;
canvas.height = 650;
let lastChapter;
let sellNum = 1;
let buyNum = 1;
canvas.id = "stockGraph";
const stockMax = 100;
let money = 1000;
let profit=0;
let totalstockvalue=1000;
let loggedIn = false;
document.getElementById("canvasBox").appendChild(canvas);
let context = canvas.getContext("2d");
if (window.innerWidth > 1650) {
  document
    .querySelector(".description-box-holder")
    .appendChild(document.getElementById("stockSidePanel"));
} else {
  document.body.appendChild(document.getElementById("stockSidePanel"));
}
window.onresize = () => {
  if (window.innerWidth > 1650) {
    document
      .querySelector(".description-box-holder")
      .appendChild(document.getElementById("stockSidePanel"));
  } else {
    document.body.appendChild(document.getElementById("stockSidePanel"));
  }
};

window.onload = async () => {
  for (const item of stockValues) {
    if (localStorage.getItem(`${item[2]}Visible`) != null) {
      item[1] = JSON.parse(localStorage.getItem(`${item[2]}Visible`));
    }
  }
  await getStockData(drawAll);
  //await drawAll();
  document.querySelector(
    ".buttonHolder"
  ).innerHTML = `<button class="leaderboard" onclick="location.href = '/leaderboard';" >Leaderboard</button>`;
  const date = new Date();
  if (
    !sessionStorage.username ||
    (sessionStorage &&
      (date.getTime() - Number(sessionStorage.startTime)) / (2 * 3600 * 1000) >
        1)
  ) {
    sessionStorage.clear();
    document.querySelector(
      ".buttonHolder"
    ).innerHTML += `<button class="login" onclick="location.href = '/login';" >log in/create account</button>`;
    setUpOtherTimes();
    setUpFirstTime();
  } else {
    await fetch("/get-user-data", {
      method: "get",
      headers: new Headers({
        "Content-Type": "application/json",
        authorization: `Bearer ${sessionStorage.getItem("token")}`,
      }),
    })
      .then((res) => res.json())
      .then((data) => {
        validateData(data);
      });
    document.querySelector(
      ".buttonHolder"
    ).innerHTML += `<button class="logout" onclick="sessionStorage.clear();
    location.reload();" >log out</button>`;
    loggedIn = true;
    setupFromServer();
  }
  updateStockDescriptions();
  updateMoney();
};
function setupFromServer() {
  money = Number(sessionStorage.money);
  profit = Number(sessionStorage.profit);
  for (let item of stockValues) {
    item[3] = Number(sessionStorage.getItem(item[2].toLowerCase()));
  }
  let profitDisplay = document.getElementById("profitDisplay");
  profitDisplay.innerHTML = `Profit:$${profit.toFixed(2)}`;
}

function toggleAll(num){
  let value;
  if(num ==0){
    value=false;
  }
  if(num ==1){
    value=true;
  }
  if(num<2){
    for(let item of stockValues){
      document.getElementById(`checkbox${item[2]}`).checked = value;
      item[1]=value;
      localStorage.setItem(`${item[2]}Visible`, value);
    }
  }
  if(num ==2){
    for(let item of stockValues){
      if(item[3]>0){
        document.getElementById(`checkbox${item[2]}`).checked = !item[1];
        item[1]=!item[1];
        localStorage.setItem(`${item[2]}Visible`, item[1]);
      }
    }
  }
  if(num ==3){
    for(let item of stockValues){
      if(item[3]<1){
        document.getElementById(`checkbox${item[2]}`).checked = !item[1];
        item[1]=!item[1];
        localStorage.setItem(`${item[2]}Visible`, item[1]);
      }
    }
  }
  context.clearRect(0, 0, canvas.width, canvas.height);
  drawGrid();
  prepareStockImages();
  drawStocks();
}
function drawGrid() {
  context.beginPath();
  context.strokeStyle = "black";
  context.lineWidth = 0.5;
  for (let i = 0; i < canvas.width + 1; i += oneTick) {
    context.moveTo(i, 0);
    context.lineTo(i, canvas.height);
    context.stroke();
  }
  for (let i = 0; i < canvas.height + 1; i += canvas.height / 10) {
    context.moveTo(0, i);
    context.lineTo(canvas.width, i);
    context.stroke();
  }
}
function drawAll() {
  stockValues.sort(function (a, b) {
    return b[0][b[0].length - 1] - a[0][a[0].length - 1];
  });
  drawGrid();
  drawStocks();
  prepareStockImages();
  drawStockPanel();
  drawStockSidePanel();
}
async function getStockData(callback) {
  await fetch("/stock-values")
    .then((res) => res.json())
    .then((values) => {
      console.log(values);
      for (let item of stockValues) {
        item[0] = values.map((obj) => Number(obj[item[2].toLowerCase()]));
        item[0] = item[0].reverse();
      }
      lastChapter = Number(values[0].lastchapter) -19;
    });
  callback();
}
function setUpFirstTime() {
  if (decodeURIComponent(document.cookie) == "" || getCookie("Money")==null|| getCookie("Money")=="") {
    setCookie("Money", money);
    setCookie("Profit", profit);
    setCookie("totalstockvalue", totalstockvalue);
    const date = new Date();
    setCookie("LastDate", date.getTime());
    for (let item of stockValues) {
      setCookie(item[2], 0);
    }
  }
}
function setUpOtherTimes() {
  if (decodeURIComponent(document.cookie) != ""&& getCookie("Money")!=null&& getCookie("Money")!="") {
    const date = new Date();
    money = Number(getCookie("Money"));
    totalstockvalue = money;
    for(let item of stockValues){
      item[3] = getCookie(item[2]);
      totalstockvalue +=item[3]*item[0][stockValues[0][0].length - 1];
    }
    if(getCookie("Profit")=='null'||getCookie("Profit")==''){
      setCookie("totalstockvalue", totalstockvalue);
      profit=0;
    }
    else{
      profit = Number(getCookie("Profit"))+totalstockvalue-Number(getCookie("totalstockvalue"));
    }
    timeSinceLastCookie =
      (date.getTime() - getCookie("LastDate")) / (24 * 3600 * 1000);
    money += 100 * Math.floor(timeSinceLastCookie);
    totalstockvalue += 100 * Math.floor(timeSinceLastCookie);
    timeSinceLastCookie -= Math.floor(timeSinceLastCookie);
    setCookie(
      "LastDate",
      date.getTime() - 24 * 3600 * 1000 * timeSinceLastCookie
    );
    setCookie("Money", money);
    setCookie("totalstockvalue",totalstockvalue);
    setCookie("Profit",profit);
    let profitDisplay = document.getElementById("profitDisplay");
    profitDisplay.innerHTML = `Profit:$${profit.toFixed(2)}`;
  }
}
function drawStockSidePanel() {
  let cashDisplay = document.createElement("h1");
  cashDisplay.setAttribute("id", "cashDisplay");
  document.getElementById("stockSidePanelMoney").appendChild(cashDisplay);
  cashDisplay.innerHTML = `Bank:$${money.toFixed(2)}`;
  let profitDisplay = document.createElement("h1");
  profitDisplay.setAttribute("id", "profitDisplay");
  document.getElementById("stockSidePanelMoney").appendChild(profitDisplay);
  profitDisplay.innerHTML = `Profit:$${0}`;
}
function changeSellNum(num) {
  sellNum = num;
  if (sellNum < 1000) {
    document.getElementById(
      "sidePanelSellButtonLabel"
    ).textContent = `Currently selling stocks ${sellNum} at a time`;
  } else {
    document.getElementById(
      "sidePanelSellButtonLabel"
    ).textContent = `Currently selling all stocks owned`;
  }
}
function changeBuyNum(num) {
  buyNum = num;
  if (buyNum < 1000) {
    document.getElementById(
      "sidePanelBuyButtonLabel"
    ).textContent = `Currently buying stocks ${buyNum} at a time`;
  } else {
    document.getElementById(
      "sidePanelBuyButtonLabel"
    ).textContent = `Currently buying all stocks possible`;
  }
}
function updateMoney() {
  let cashDisplay = document.getElementById("cashDisplay");
  cashDisplay.innerHTML = `Bank:$${money.toFixed(2)}`;
}
function drawStockPanel() {
  for (const [index, item] of stockValues.entries()) {
    let stockDiv = document.createElement("div");
    stockDiv.id = `stockDiv ${item[2]}`;
    stockDiv.setAttribute("class", "stockDiv");
    let descriptionBox = document.createElement("div");
    let descriptionTitle = document.createElement("h4");
    descriptionTitle.setAttribute("class", "stockDescriptionTitle");
    descriptionBox.appendChild(descriptionTitle);
    let checkbox = document.createElement("label");
    checkbox.setAttribute("class", "switch");
    if (!item[1]) {
      checkbox.innerHTML = `<input type="checkbox"  id="checkbox${item[2]}">
        <span class="slider round"></span>`;
    } 
    else if(item[1]) {
      checkbox.innerHTML = `<input type="checkbox"  id="checkbox${item[2]}" checked>
        <span class="slider round"></span>`;
    }
    checkbox.addEventListener("change", () => {
      item[1] = !item[1];
      context.clearRect(0, 0, canvas.width, canvas.height);
      drawGrid();
      prepareStockImages();
      drawStocks();
      localStorage.setItem(`${item[2]}Visible`, item[1]);
    });
    descriptionBox.appendChild(checkbox);
    descriptionTitle.textContent = `${item[2]}`;
    stockDiv.appendChild(descriptionBox);
    let description = document.createElement("p");
    stockDiv.appendChild(description);
    description.innerHTML = ` Stock:${item[3]} <br/> Value:$${
      item[0][item[0].length - 1]
    }`;
    description.setAttribute("id", `${item[2]}Description`);
    description.setAttribute("class", "stockDescription");
    document.getElementById("stockPanel").appendChild(stockDiv);
    let button = document.createElement("button");
    button.id = item[2];
    button.setAttribute("class", "stockPanelButtonBuy");
    button.textContent = "BUY";
    stockDiv.appendChild(button);
    button.setAttribute("onclick", `buyStock(${index})`);
    let button2 = document.createElement("button");
    button2.setAttribute("class", "stockPanelButtonSell");
    stockDiv.appendChild(button2);
    button2.textContent = "SELL";
    button2.setAttribute("onclick", `sellStock(${index})`);
  }
}
function updateStockDescription(index) {
  description = document.getElementById(`${stockValues[index][2]}Description`);
  description.innerHTML = `Stock:${stockValues[index][3]} <br/> Value:$${
    stockValues[index][0][stockValues[index][0].length - 1]
  }`;
}
function updateStockDescriptions() {
  for (const [index, item] of stockValues.entries()) {
    description = document.getElementById(
      `${stockValues[index][2]}Description`
    );
    description.innerHTML = `Stock:${stockValues[index][3]} <br/> Value:$${
      stockValues[index][0][stockValues[index][0].length - 1]
    }`;
  }
}
async function buyStock(index) {
  let ogmoney = money;
  let ogamount = stockValues[index][3];
  canBuy = Math.floor(
    money / Number(stockValues[index][0][stockValues[index][0].length - 1])
  );
  if (!canBuy >= 1) {
    return;
  }
  if (canBuy >= buyNum) {
    money -=
      buyNum * Number(stockValues[index][0][stockValues[index][0].length - 1]);
    stockValues[index][3] = Number(stockValues[index][3]);
    stockValues[index][3] += buyNum;
  }
  if (canBuy < buyNum) {
    money -=
      canBuy * Number(stockValues[index][0][stockValues[index][0].length - 1]);
    stockValues[index][3] = Number(stockValues[index][3]);
    stockValues[index][3] += canBuy;
  }
  const date = new Date();
  if (
    sessionStorage &&
    (date.getTime() - Number(sessionStorage.startTime)) / (2 * 3600 * 1000) > 1
  ) {
    location.reload();
  }
  if (loggedIn) {
    await fetch("/buy-stock", {
      method: "post",
      headers: new Headers({
        "Content-Type": "application/json",
        authorization: `Bearer ${sessionStorage.getItem("token")}`,
      }),
      body: JSON.stringify({
        name: stockValues[index][2].toLowerCase(),
        amount: buyNum,
      }),
    })
      .then((res) => res.json())
      .then((data) => {
        if (!data.money) {
          alertBox(data);
          money = ogmoney;
          stockValues[index][3] = ogamount;
        } else {
          money = Number(data.money);
        }
      });
  } else {
    setCookie("Money", money);
    setCookie(stockValues[index][2], stockValues[index][3]);
  }
  updateStockDescription(index);
  updateMoney();
}
async function sellStock(index) {
  let ogmoney = money;
  let ogamount = stockValues[index][3];
  canSell = stockValues[index][3];
  if (!canSell >= 1) {
    return;
  }
  if (canSell >= sellNum) {
    money +=
      sellNum * Number(stockValues[index][0][stockValues[index][0].length - 1]);
    stockValues[index][3] = Number(stockValues[index][3]);
    stockValues[index][3] -= sellNum;
  }
  if (canSell < sellNum) {
    money +=
      canSell * Number(stockValues[index][0][stockValues[index][0].length - 1]);
    stockValues[index][3] = Number(stockValues[index][3]);
    stockValues[index][3] -= canSell;
  }
  const date = new Date();
  if (
    sessionStorage &&
    (date.getTime() - Number(sessionStorage.startTime)) / (2 * 3600 * 1000) > 1
  ) {
    location.reload();
  }
  if (loggedIn) {
    await fetch("/sell-stock", {
      method: "post",
      headers: new Headers({
        "Content-Type": "application/json",
        authorization: `Bearer ${sessionStorage.getItem("token")}`,
      }),
      body: JSON.stringify({
        username: sessionStorage.username,
        name: stockValues[index][2].toLowerCase(),
        amount: sellNum,
      }),
    })
      .then((res) => res.json())
      .then((data) => {
        if (!data.money) {
          alertBox(data);
          money = ogmoney;
          stockValues[index][3] = ogamount;
        } else {
          money = Number(data.money);
        }
      });
  } else {
    setCookie("Money", money);
    setCookie(stockValues[index][2], stockValues[index][3]);
  }
  updateStockDescription(index);
  updateMoney();
}
function setCookie(name, value) {
  document.cookie = `${name}=${value}; expires=Sun,1 January 2040 12:00:00 UTC;`;
}
function deleteCookie(name) {
  setCookie(name, null, null);
}
function getCookie(name) {
  const cDecoded = decodeURIComponent(document.cookie);
  const cArray = cDecoded.split("; ");
  let result = 0;
  cArray.forEach((element) => {
    if (element.indexOf(name) == 0) {
      result = element.substring(name.length + 1);
    }
  });
  return result;
}
async function prepareStockImages() {
  for (item of [...stockValues].reverse()) {
    if (item[1] == true) {
      price = 0;
      imageName = "images/" + item[2] + ".png";
      if (item[0][item[0].length - 1] != undefined) {
        price = item[0][item[0].length - 1];
      }
      if (price === 0) {
        continue;
      }
      drawStockImage(item[2], imageName, price);
      await sleep(10);
    }
  }
}
async function drawStockImage(name, imageName, price) {
  return new Promise((resolve) => {
    const img = new Image();
    img.id = name;
    img.src = imageName;
    img.onload = function () {
      context.drawImage(
        img,
        canvas.width - oneTick - 20,
        canvas.height - (price * (canvas.height / stockMax) + 20)
      );
      resolve("resolved");
    };
  });
}
function sleep(ms) {
  return new Promise((resolve) => setTimeout(resolve, ms));
}
const alertBox = (data) => {
  const alertContainer = document.querySelector(".alert-box");
  const alertMsg = document.querySelector(".alert");
  alertMsg.innerHTML = data;

  alertContainer.style.top = `50%`;
  setTimeout(() => {
    alertContainer.style.top = null;
  }, 5000);
};
function drawStocks() {
  document
    .querySelectorAll(".chapterNums")
    .forEach((element, i) => (element.textContent = lastChapter + i));
  for (let item of stockValues) {
    if (item[1] == true) {
      for (let index = 0; index < item[0].length; index++) {
        context.beginPath();
        context.lineWidth = 5;
        value = item[0][index];
        if (item[0][index + 1] < value) {
          context.strokeStyle = "red";
        }
        if (item[0][index + 1] > value) {
          context.strokeStyle = "green";
        }
        //Maybe change in future
        if (item[0][index + 1] == value) {
          context.strokeStyle = "black";
        }
        context.moveTo(
          index * oneTick,
          canvas.height - (canvas.height / stockMax) * value
        );
        context.lineTo(
          (index + 1) * oneTick,
          canvas.height - (canvas.height / stockMax) * item[0][index + 1]
        );
        context.stroke();
      }
    }
  }
}
const validateData = (data) => {
  sessionStorage.money = Number(data.money);
  sessionStorage.profit = Number(data.profit);
  sessionStorage.arye_prays = data.arye_prays;
  sessionStorage.jango_fett = data.jango_fett;
  sessionStorage.satele_shan = data.satele_shan;
  sessionStorage.revan = data.revan;
  sessionStorage.havok = data.havok;
  sessionStorage.count_dooku = data.count_dooku;
  sessionStorage.anakin_skywalker = data.anakin_skywalker;
  sessionStorage.ahsoka_tano = data.ahsoka_tano;
  sessionStorage.asharad_hett = data.asharad_hett;
  sessionStorage.general_grievous = data.general_grievous;
  sessionStorage.seloth = data.seloth;
  sessionStorage.mereel_skirata = data.mereel_skirata;
  sessionStorage.venku_kad_skirata = data.venku_kad_skirata;
  sessionStorage.quinlan_vos = data.quinlan_vos;
  sessionStorage.near_farr = data.near_farr;
  sessionStorage.evaarla_mereel = data.evaarla_mereel;
  sessionStorage.clarrarifufza = data.clarrarifufza;
  sessionStorage.elizabeth_persche = data.elizabeth_persche;
  sessionStorage.darth_vorhn = data.darth_vorhn;
  sessionStorage.wrecker = data.wrecker;
  sessionStorage.annalise_dimidium = data.annalise_dimidium;
  sessionStorage.plo_koon = data.plo_koon;
  sessionStorage.ghos_gin = data.ghos_gin;
  sessionStorage.tallisibeth_enwandung_esterhazy = data.tallisibeth_enwandung_esterhazy;
  sessionStorage.sevaronurudo = data.sevaronurudo;
  sessionStorage.a_77_fordo = data.a_77_fordo;
  sessionStorage.a_07_epsilon = data.a_07_epsilon;
  sessionStorage.belkrin_priest_wren = data.belkrin_priest_wren;
  sessionStorage.rc_5704_storm = data.rc_5704_storm;
  sessionStorage.rc_6008_goober = data.rc_6008_goober;
  sessionStorage.meisis_zerliss = data.meisis_zerliss;
  sessionStorage.cc_1359_obsidian = data.cc_1359_obsidian;
  sessionStorage.dryden_vos = data.dryden_vos;
  sessionStorage.the_singer = data.the_singer;
  sessionStorage.cc_5597_jesse = data.cc_5597_jesse;
  sessionStorage.rc_1025_fuse = data.rc_1025_fuse;
  sessionStorage.cc_0087_blitz = data.cc_0087_blitz;
  sessionStorage.daybreak_axis = data.daybreak_axis;
  sessionStorage.cc_2237_oddball = data.cc_2237_oddball;
  sessionStorage.dagan_gera = data.dagan_gera;
  sessionStorage.ct_1614_hasser = data.ct_1614_hasser;
  sessionStorage.raiden = data.raiden;
  sessionStorage.cc_1178_sights = data.cc_1178_sights;
  sessionStorage.cc_1212_twelve = data.cc_1212_twelve;
  sessionStorage.ty_rell = data.ty_rell;
  sessionStorage.valire_ameile_tone = data.valire_ameile_tone;
  sessionStorage.ct_2602_rhino_slayer = data.ct_2602_rhino_slayer;
  sessionStorage.bb_c03_cothree = data.bb_c03_cothree;
};
