BEGIN;

UPDATE users set tempProfit=totalstockvalue;
UPDATE users set totalstockvalue=r2_d2*76+aden_skirata*59+lesser_stormtrooper*4+ysanne_isard*14+victorie_talik*60+eleventh_brother*40+darth_vader*80+chewbacca*68+sergeant_kreel*64+pt_1178*46+unknown_valtorax_character*48+third_brother*32+second_sister*32+fixer*48+thirteenth_brother*8+dexter_jettster*60+cyan*40+grand_admiral_piett*48+unknown_stemmedaxis06_character*78+fifth_brother*40+maze*36+rav_bralor*44+epsilon*60+zeb*48+agent66*42+wedge_antilles*60+cipher9*46+thrawn*68+corran_horn*51+agent_kallus*48+sixth_sister*40+chopper*66+han_solo*72+ackbar*68+grand_inquisitor*62+rex*64+boba_fett*61+sabe_nabierre*52+luke_skywalker*79+c3po*55+airen_cracken*44+strzalk*48+ninth_sister*40+ig_88b*44+garrick_versio*38+axis*74+gideon*46+fenn_shysa*30+boss*48+sabine_wren*50+mara_jade*52+alpha_17*34+omega*40+kal_skirata*26+gallius_rex*40+twelfth_brother*48+eli_vanto*41+saw_garrera*46+wolffe*32+lando_calrissian*74+la_mereel*66+kyle_katarn*61+carnor_jax*44+mission_vao*42+x2*40+seventh_sister*40+jan_ors*42+scorch*48+lumiya*8+rahm_kota*51+pellaeon*48+leia_organa*72+ghos_gin*60+janitor*35+money;
UPDATE users set tempProfit=totalstockvalue-tempProfit;
UPDATE users set profit=profit+tempProfit;

COMMIT;