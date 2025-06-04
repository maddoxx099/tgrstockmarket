BEGIN;

UPDATE users set tempProfit=totalstockvalue;
UPDATE users set totalstockvalue=r2_d2*76+aden_skirata*59+lesser_stormtrooper*5+ysanne_isard*14+victorie_talik*60+eleventh_brother*50+darth_vader*82+chewbacca*68+sergeant_kreel*64+pt_1178*46+unknown_valtorax_character*48+third_brother*33+second_sister*33+fixer*48+thirteenth_brother*8+dexter_jettster*60+cyan*40+grand_admiral_piett*47+unknown_stemmedaxis06_character*78+fifth_brother*41+maze*37+rav_bralor*44+epsilon*60+zeb*48+agent66*42+wedge_antilles*60+cipher9*46+thrawn*68+corran_horn*51+agent_kallus*48+sixth_sister*38+chopper*66+han_solo*72+ackbar*68+grand_inquisitor*60+rex*64+boba_fett*61+sabe_nabierre*52+luke_skywalker*80+c3po*55+airen_cracken*44+strzalk*48+ninth_sister*40+ig_88b*44+garrick_versio*36+axis*74+gideon*44+fenn_shysa*34+boss*48+sabine_wren*50+mara_jade*52+alpha_17*34+omega*40+kal_skirata*26+gallius_rex*37+twelfth_brother*48+eli_vanto*41+saw_garrera*46+wolffe*32+lando_calrissian*74+evaarla_mereel*66+kyle_katarn*61+carnor_jax*48+mission_vao*42+x2*40+seventh_sister*41+jan_ors*42+scorch*48+lumiya*8+rahm_kota*51+pellaeon*49+leia_organa*72+ghos_gin*60+janitor*23.1+satele*75+mothma*65+bo_katan*28+bossk*58+snake_zapal*30+armstrong*62+death_troopers*48+money;
UPDATE users set tempProfit=totalstockvalue-tempProfit;
UPDATE users set profit=profit+tempProfit;

COMMIT;