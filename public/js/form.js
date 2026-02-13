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