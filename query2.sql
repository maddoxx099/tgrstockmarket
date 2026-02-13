BEGIN;

UPDATE users set tempProfit=totalstockvalue;
UPDATE users set totalstockvalue=arye_prays*97+jango_fett*97+satele_shan*95+revan*94+havok*93+count_dooku*92+anakin_skywalker*90+ahsoka_tano*85+asharad_hett*84+general_grievous*83+seloth*82+mereel_skirata*82+venku_kad_skirata*81+quinlan_vos*80+near_farr*79+evaarla_mereel*78+clarrarifufza*75+elizabeth_persche*75+darth_vorhn*72+wrecker*71+annalise_dimidium*71+plo_koon*70+ghos_gin*62+tallisibeth_enwandung_esterhazy*60+sevaronurudo*60+a_77_fordo*59+a_07_epsilon*59+belkrin_priest_wren*58+rc_5704_storm*58+rc_6008_goober*56+meisis_zerliss*55+cc_1359_obsidian*55+dryden_vos*54+the_singer*54+cc_5597_jesse*52+rc_1025_fuse*51+cc_0087_blitz*50+daybreak_axis*45+cc_2237_oddball*42+dagan_gera*40+ct_1614_hasser*40+raiden*39+cc_1178_sights*38+cc_1212_twelve*37+ty_rell*36+valire_ameile_tone*30+ct_2602_rhino_slayer*17+bb_c03_cothree*12+money;
UPDATE users set tempProfit=totalstockvalue-tempProfit;
UPDATE users set profit=profit+tempProfit;
COMMIT;