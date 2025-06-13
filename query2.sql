BEGIN;

UPDATE users set tempProfit=totalstockvalue;
UPDATE users set totalstockvalue=r2_d2*76+aden_skirata*60+lesser_stormtrooper*7+ysanne_isard*14+victorie_talik*64+eleventh_brother*50+darth_vader*82+chewbacca*68+sergeant_kreel*64+pt_1178*46+unknown_valtorax_character*48+third_brother*34+second_sister*33+fixer*48+thirteenth_brother*8+dexter_jettster*60+cyan*41+grand_admiral_piett*48+unknown_stemmedaxis06_character*78+fifth_brother*41+maze*39+rav_bralor*45+epsilon*60+zeb*48+agent66*42+wedge_antilles*61+cipher9*46+thrawn*69+corran_horn*54+agent_kallus*48+sixth_sister*38+chopper*66+han_solo*72+ackbar*66+grand_inquisitor*60+rex*64+boba_fett*63+sabe_nabierre*52+luke_skywalker*80+c3po*55+airen_cracken*44+strzalk*48+ninth_sister*40+ig_88b*44+garrick_versio*36+axis*76+gideon*44+fenn_shysa*33+boss*48+sabine_wren*51+mara_jade*53+alpha_17*39+omega*40+kal_skirata*26+gallius_rex*38+twelfth_brother*48+eli_vanto*43+saw_garrera*49+wolffe*41+lando_calrissian*74+evaarla_mereel*66+kyle_katarn*61+carnor_jax*48+mission_vao*42+x2*40+seventh_sister*41+jan_ors*42+scorch*48+lumiya*8+rahm_kota*50+pellaeon*50+leia_organa*72+ghos_gin*60+janitor*3+satele*75+mothma*60+bo_katan*28+bossk*59+snake_zapal*30+armstrong*62+death_troopers*48+nom_carver*45+samuel_rodrigues*46+money;
UPDATE users set tempProfit=totalstockvalue-tempProfit;
UPDATE users set profit=profit+tempProfit;

COMMIT;