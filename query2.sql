BEGIN;

UPDATE users set tempProfit=totalstockvalue;
UPDATE users set totalstockvalue=arye_prays*99+jango_fett*99+satele_shan*100+revan*93+havok*95+count_dooku*93+anakin_skywalker*92+ahsoka_tano*90+asharad_hett*87+general_grievous*88+seloth*88+mereel_skirata*84+venku_kad_skirata*86+quinlan_vos*75+near_farr*77+evaarla_mereel*81+clarrarifufza*79+elizabeth_persche*78+darth_vorhn*74+wrecker*73+annalise_dimidium*70+plo_koon*66+ghos_gin*61+tallisibeth_enwandung_esterhazy*59+sevaronurudo*55+a_77_fordo*58+a_07_epsilon*62+belkrin_priest_wren*57+rc_5704_storm*62+rc_6008_goober*51+meisis_zerliss*58+cc_1359_obsidian*51+dryden_vos*53+the_singer*52+cc_5597_jesse*55+rc_1025_fuse*53+cc_0087_blitz*50+daybreak_axis*51+cc_2237_oddball*37+dagan_gera*39+ct_1614_hasser*36+raiden*40+cc_1178_sights*40+cc_1212_twelve*42+ty_rell*37+valire_ameile_tone*24+ct_2602_rhino_slayer*15+bb_c03_cothree*15+money;
UPDATE users set tempProfit=totalstockvalue-tempProfit;
UPDATE users set profit=profit+tempProfit;
COMMIT;