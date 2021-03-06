﻿/**
 * Ouvre la boоte de dialogue du contenu du vйhicule et la prйrempli en fonction de vйhicule
 * 
 * @param 0 le vйhicule dont il faut afficher le contenu
 * 
 * Copyright (C) 2014 Team ~R3F~
 * 
 * This program is free software under the terms of the GNU General Public License version 3.
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include "dlg_constantes.h"

disableSerialization; // A cause des displayCtrl

private ["_transporteur", "_chargement", "_chargement_precedent", "_contenu"];
private ["_tab_objets", "_tab_quantite", "_i", "_dlg_contenu_vehicule", "_ctrl_liste"];

R3F_LOG_objet_selectionne = objNull;

_transporteur = _this select 0;
uiNamespace setVariable ["R3F_LOG_dlg_CV_transporteur", _transporteur];

createDialog "R3F_LOG_dlg_contenu_vehicule";
waitUntil (uiNamespace getVariable "R3F_LOG_dlg_contenu_vehicule");
_dlg_contenu_vehicule = findDisplay R3F_LOG_IDD_dlg_contenu_vehicule;

/**** DEBUT des traductions des labels ****/
(_dlg_contenu_vehicule displayCtrl R3F_LOG_IDC_dlg_CV_titre) ctrlSetText STR_R3F_LOG_dlg_CV_titre;
(_dlg_contenu_vehicule displayCtrl R3F_LOG_IDC_dlg_CV_credits) ctrlSetText "Перевод [ARMATOP] TopDen";
(_dlg_contenu_vehicule displayCtrl R3F_LOG_IDC_dlg_CV_btn_decharger) ctrlSetText STR_R3F_LOG_dlg_CV_btn_decharger;
(_dlg_contenu_vehicule displayCtrl R3F_LOG_IDC_dlg_CV_btn_fermer) ctrlSetText STR_R3F_LOG_dlg_CV_btn_fermer;
/**** FIN des traductions des labels ****/

_ctrl_liste = _dlg_contenu_vehicule displayCtrl R3F_LOG_IDC_dlg_CV_liste_contenu;

_chargement_precedent = [];

while {!isNull _dlg_contenu_vehicule} do
{
	_chargement = [_transporteur] call R3F_LOG_FNCT_calculer_chargement_vehicule;
	
	// Si le contenu a changй, on rafraichit l'interface
	if !([_chargement, _chargement_precedent] call BIS_fnc_areEqual) then
	{
		_chargement_precedent = +_chargement;
		
		_contenu = _transporteur getVariable ["R3F_LOG_objets_charges", []];
		
		/** Liste des noms de classe des objets contenu dans le vйhicule, sans doublon */
		_tab_objets = [];
		/** Quantitй associй (par l'index) aux noms de classe dans _tab_objets */
		_tab_quantite = [];
		
		// Prйparation de la liste du contenu et des quantitйs associйes aux objets
		for [{_i = 0}, {_i < count _contenu}, {_i = _i + 1}] do
		{
			private ["_objet"];
			_objet = _contenu select _i;
			
			if !((typeOf _objet) in _tab_objets) then
			{
				_tab_objets = _tab_objets + [typeOf _objet];
				_tab_quantite = _tab_quantite + [1];
			}
			else
			{
				private ["_idx_objet"];
				_idx_objet = _tab_objets find (typeOf _objet);
				_tab_quantite set [_idx_objet, ((_tab_quantite select _idx_objet) + 1)];
			};
		};
		
		lbClear _ctrl_liste;
		(_dlg_contenu_vehicule displayCtrl R3F_LOG_IDC_dlg_CV_capacite_vehicule) ctrlSetText (format [STR_R3F_LOG_dlg_CV_capacite_vehicule, _chargement select 0, _chargement select 1]);
		
		if (count _tab_objets == 0) then
		{
			(_dlg_contenu_vehicule displayCtrl R3F_LOG_IDC_dlg_CV_btn_decharger) ctrlEnable false;
		}
		else
		{
			// Insertion de chaque type d'objets dans la liste
			for [{_i = 0}, {_i < count _tab_objets}, {_i = _i + 1}] do
			{
				private ["_classe", "_quantite", "_icone", "_tab_icone", "_index"];
				
				_classe = _tab_objets select _i;
				_quantite = _tab_quantite select _i;
				_icone = getText (configFile >> "CfgVehicles" >> _classe >> "icon");
				
				// Icфne par dйfaut
				if (_icone == "") then
				{
					_icone = "\A3\ui_f\data\map\VehicleIcons\iconObject_ca.paa";
				};
				
				// Si le chemin commence par A3\ ou a3\, on rajoute un \ au dйbut
				_tab_icone = toArray toLower _icone;
				if (count _tab_icone >= 3 &&
					{
						_tab_icone select 0 == (toArray "a" select 0) &&
						_tab_icone select 1 == (toArray "3" select 0) &&
						_tab_icone select 2 == (toArray "\" select 0)
					}) then
				{
					_icone = "\" + _icone;
				};
				
				// Si icфne par dйfaut, on rajoute le chemin de base par dйfaut
				_tab_icone = toArray _icone;
				if (_tab_icone select 0 != (toArray "\" select 0)) then
				{
					_icone = format ["\A3\ui_f\data\map\VehicleIcons\%1_ca.paa", _icone];
				};
				
				// Si pas d'extension de fichier, on rajoute ".paa"
				_tab_icone = toArray _icone;
				if (count _tab_icone >= 4 && {_tab_icone select (count _tab_icone - 4) != (toArray "." select 0)}) then
				{
					_icone = _icone + ".paa";
				};
				
				_index = _ctrl_liste lbAdd (getText (configFile >> "CfgVehicles" >> _classe >> "displayName") + format [" (%1x)", _quantite]);
				_ctrl_liste lbSetPicture [_index, _icone];
				_ctrl_liste lbSetData [_index, _classe];
				
				if (uiNamespace getVariable ["R3F_LOG_dlg_CV_lbCurSel_data", ""] == _classe) then
				{
					_ctrl_liste lbSetCurSel _index;
				};
			};
			
			(_dlg_contenu_vehicule displayCtrl R3F_LOG_IDC_dlg_CV_btn_decharger) ctrlEnable true;
		};
	};
	
	sleep 0.15;
};