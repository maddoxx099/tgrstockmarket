const username = document.querySelector('.username');
const password = document.querySelector('.password');
const submitBtn = document.querySelector('.submit-btn');

window.onload = () =>{
    if(sessionStorage.username){
      location.href = '/';
    }
  }

if(document.querySelector('.heading').textContent==="login"){
    submitBtn.addEventListener('click',()=>{
        fetch('/login-user', {
            method:'post',
            headers: new Headers({'Content-Type': 'application/json'}),
            body: JSON.stringify({
                username: username.value,
                password:password.value
            })
        })
        .then(res=>res.json())
        .then(data => {
            validateData(data);
        })
    })
} else{
    submitBtn.addEventListener('click',()=>{
        if(password.value.length<8){
            alertBox("password too short")
        }
        else{
            fetch('/register-user', {
                method:'post',
                headers: new Headers({'Content-Type': 'application/json'}),
                body: JSON.stringify({
                    username: username.value,
                    password:password.value
                })
            })
            .then(res=>res.json())
            .then(data => {
                if(data.username){
                    location.href = '/login'
                } else{
                    alertBox(data);
                }
            })
        }
    })
}

const validateData = (data)=>{
    sessionStorage.setItem("token",data[1].accessToken);
    if(typeof data==='object'){
        data=data[0];
    }
    if(!data.username){
        alertBox(data);
    } else{
        const date = new Date();
        sessionStorage.startTime = date.getTime();
        sessionStorage.username = data.username;
        sessionStorage.money = Number(data.money);
        sessionStorage.profit = Number(data.profit);
        sessionStorage.r2_d2 = data.r2_d2;
        sessionStorage.aden_skirata = data.aden_skirata;
        sessionStorage.lesser_stormtrooper = data.lesser_stormtrooper;
        sessionStorage.ysanne_isard = data.ysanne_isard;
        sessionStorage.victorie_talik = data.victorie_talik;
        sessionStorage.eleventh_brother = data.eleventh_brother;
        sessionStorage.darth_vader = data.darth_vader;
        sessionStorage.chewbacca = data.chewbacca;
        sessionStorage.sergeant_kreel = data.sergeant_kreel;
        sessionStorage.pt_1178 = data.pt_1178;
        sessionStorage.unknown_valtorax_character = data.unknown_valtorax_character;
        sessionStorage.third_brother = data.third_brother;
        sessionStorage.second_sister = data.second_sister;
        sessionStorage.fixer = data.fixer;
        sessionStorage.thirteenth_brother = data.thirteenth_brother;
        sessionStorage.dexter_jettster = data.dexter_jettster;
        sessionStorage.cyan = data.cyan;
        sessionStorage.grand_admiral_piett = data.grand_admiral_piett;
        sessionStorage.unknown_stemmedaxis06_character = data.unknown_stemmedaxis06_character;
        sessionStorage.fifth_brother = data.fifth_brother;
        sessionStorage.maze = data.maze;
        sessionStorage.rav_bralor = data.rav_bralor;
        sessionStorage.epsilon = data.epsilon;
        sessionStorage.zeb = data.zeb;
        sessionStorage.agent66 = data.agent66;
        sessionStorage.wedge_antilles = data.wedge_antilles;
        sessionStorage.cipher9 = data.cipher9;
        sessionStorage.thrawn = data.thrawn;
        sessionStorage.corran_horn = data.corran_horn;
        sessionStorage.agent_kallus = data.agent_kallus;
        sessionStorage.sixth_sister = data.sixth_sister;
        sessionStorage.chopper = data.chopper;
        sessionStorage.han_solo = data.han_solo;
        sessionStorage.ackbar = data.ackbar;
        sessionStorage.grand_inquisitor = data.grand_inquisitor;
        sessionStorage.rex = data.rex;
        sessionStorage.boba_fett = data.boba_fett;
        sessionStorage.sabe_nabierre = data.sabe_nabierre;
        sessionStorage.luke_skywalker = data.luke_skywalker;
        sessionStorage.c3po = data.c3po;
        sessionStorage.airen_cracken = data.airen_cracken;
        sessionStorage.strzalk = data.strzalk;
        sessionStorage.ninth_sister = data.ninth_sister;
        sessionStorage.ig_88b = data.ig_88b;
        sessionStorage.garrick_versio = data.garrick_versio;
        sessionStorage.axis = data.axis;
        sessionStorage.gideon = data.gideon;
        sessionStorage.fenn_shysa = data.fenn_shysa;
        sessionStorage.boss = data.boss;

        sessionStorage.sabine_wren = data.sabine_wren;
        sessionStorage.mara_jade = data.mara_jade;
        sessionStorage.alpha_17 = data.alpha_17;
        sessionStorage.omega = data.omega;
        sessionStorage.kal_skirata = data.kal_skirata;
        sessionStorage.gallius_rex = data.gallius_rex;
        sessionStorage.twelfth_brother = data.twelfth_brother;
        sessionStorage.eli_vanto = data.eli_vanto;
        sessionStorage.saw_garrera = data.saw_garrera;
        sessionStorage.wolffe = data.wolffe;
        sessionStorage.lando_calrissian = data.lando_calrissian;
        sessionStorage.evaarla_mereel = data.evaarla_mereel;
        sessionStorage.kyle_katarn = data.kyle_katarn;
        sessionStorage.carnor_jax = data.carnor_jax;
        sessionStorage.mission_vao = data.mission_vao;
        sessionStorage.carnor_jax = data.carnor_jax;
        sessionStorage.x2 = data.x2;
        sessionStorage.seventh_sister = data.seventh_sister;
        sessionStorage.jan_ors = data.jan_ors;
        sessionStorage.scorch = data.scorch;
        sessionStorage.lumiya = data.lumiya;
        sessionStorage.rahm_kota = data.rahm_kota;
        sessionStorage.pellaeon = data.pellaeon;
        sessionStorage.leia_organa = data.leia_organa;
        sessionStorage.ghos_gin = data.ghos_gin;
        sessionStorage.janitor = data.janitor;
        sessionStorage.bo_katan = data.bo_katan;
        sessionStorage.satele = data.satele;
        sessionStorage.mothma = data.mothma;
        sessionStorage.bossk = data.bossk;
        sessionStorage.snake_zapal = data.snake_zapal;
        sessionStorage.armstrong = data.armstrong;
        sessionStorage.death_troopers = data.death_troopers;
        //sessionStorage = JSON.parse(data)
        location.href = '/';
    }
}

const alertBox = (data) =>{
    const alertContainer = document.querySelector('.alert-box');
    const alertMsg = document.querySelector('.alert')
    alertMsg.innerHTML = data;

    alertContainer.style.top = `5%`;
    setTimeout(() =>{
        alertContainer.style.top = null;
    },5000)
}