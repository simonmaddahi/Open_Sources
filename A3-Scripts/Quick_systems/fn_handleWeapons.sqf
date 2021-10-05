/*
    Author: Simon "Natic" Maddahi
    Date: 05.10.2021
    Project: Zero-Life.de
    
    Everybody is allowed to use/edit/modify this Script!
    Do not remove the Author !
    
    Description: Changing Recoil and reload time... Connected to Skillsystem
    Warning: Change Vars and Modify Skillsystem for the Connection!
*/
private _lv_modWeap = 
[
 "srifle_EBR_F",
 "LMG_Mk200_F",
 "arifle_Katiba_F",
 "arifle_MX_SW_F"
];

//_lv_modWeap wurde rausgenommen da es für alle Waffen gültig gemacht wurde... Anpassung durch den zuständigen Dev !
//Namenskonventierung: LV = Local Var | GV = Global Var

if((GV_sks_weaponRec >= 5) && GV_sks_weaponRec <= 8) {
   player setUnitRecoilCoefficient 0.8;
} else if((GV_sks_weaponRec >= 9) && GV_sks_weaponRec <= 12) {
   player setUnitRecoilCoefficient 0.8;
};


if((GV_sks_weaponRel >= 5) && GV_sks_weaponRel <= 8) {
   player setAnimSpeedCoef 0.75;
} else if((GV_sks_weaponRel >= 9) && GV_sks_weaponRel <= 12) {
   player setAnimSpeedCoef 1.2;
} else if(GV_sks_weaponRel >= 20) {
   player setAnimSpeedCoef 2;
};

//Wird bald geändert durch performantere Lösung wie Switch Case ...
