//
//  Constrants.swift
//  significant-change-location-service
//
//  Created by phattarapon on 27/7/2565 BE.
//

import Foundation
import UIKit

extension NSNotification.Name {
    static let VwatchNeedFocusLatestDailyCheckupHistory =  NSNotification.Name("VwatchNeedFocusLatestDailyCheckupHistory")
    static let VwatchChangeLocalizableApp = NSNotification.Name("VwatchChangeLocalizableApp")
    static let VwatchReloadSponsorImageURL = NSNotification.Name("VwatchReloadImageURL")
    static let VwatchNotifySettingChanged = NSNotification.Name("VwatchNotifySettingChanged")
    static let VwatchSelectProvince = NSNotification.Name("VwatchSelectProvince")
    static let VwatchLocationUpdated = NSNotification.Name("VwatchLocationUpdated")
    static let VwatchHistoryCall = NSNotification.Name("VwatchHistoryCall")
    static let VwatchCloseWristband = NSNotification.Name("VwatchCloseWristbandView")
    static let VwatchStartDisplayWristbandStateContainer = NSNotification.Name("VwatchStartDisplayWristbandStateContainer")
    static let VwatchOpenPairWristband = NSNotification.Name("VwatchOpenPairWristband")
    static let VwatchOpenTabWristband = NSNotification.Name("VwatchOpenTabWristband")
    static let VwatchCloseVideoCall = NSNotification.Name("VwatchCloseVideoCall")
    static let VwatchIsVideoCall = NSNotification.Name("VwatchIsVideoCall")
    static let VwatchReloadVideoCall = NSNotification.Name("VwatchReloadVideoCall")
    static let VwatchNeedFocusLatestVideoCall =  NSNotification.Name("VwatchNeedFocusLatestVideoCall")
    static let VwatchVideoCallSuccess =  NSNotification.Name("VwatchVideoCallSuccess")
    static let VwatchNeedFocusLatestDailyCheckup =  NSNotification.Name("VwatchNeedFocusLatestDailyCheckup")
}

struct Constants {
    
    static var AppDisplayName: String = "DDC-Care"
    static var identityUserTest: String = "APPLE001"
    static var deviceid: String = UIDevice.current.identifierForVendor?.uuidString ?? ""
    static var defaultNumberPlaceDetention:Int = 2
    static var ParseApplicationID: String = "fca66643713470fbef55fca1ae4c4d86"
    static var DefaultAPIURL: String = "https://api.ddc-care.com/v1/"
    static var DefaultAuthenAPIURL: String = "https://api.ddc-care.com/auth/"
    static var DefaultFrontendURL: String = "https://covid19.ddc-care.com/"
    static var DefaultPublicAPIURL: String = "https://api.ddc-care.com/public/"
    static var DefaultCall: String = "1422"
    static var DefaultSponsorImageURL: String = "https://firebasestorage.googleapis.com/v0/b/covid19-vwatch-th.appspot.com/o/Group%2063%403x.png?alt=media&token=35410c52-2480-40d2-b396-097142b3cf96"
    static var DefaultHelpURL: [String: String] = [
        "th": "https://www.ddc-care.com",
        "en": "https://www.ddc-care.com"
    ]
    static var DefaultRadiusAreaPlace: [Double] = [50,500]
    static var DefaultTrackingMinVehicleInterval:Int = 4 //4
    static var DefaultTrackingMinCyclingInterval:Int = 6 //6
    static var DefaultTrackingMinRunningInterval:Int = 6 //6
    static var DefaultTrackingMinWalkingInterval:Int = 8 //8
    static var DefaultTrackingMinInterval:Int = 10 //10
    static var PriorityMinVehicleInterval:Int = 1 //4
    static var PriorityMinCyclingInterval:Int = 1 //6
    static var PriorityMinRunningInterval:Int = 2 //6
    static var PriorityMinWalkingInterval:Int = 2 //8
    static var PriorityMinInterval:Int = 3 //10
    static var DefaultWristbandAPIURL: String = "https://wristband.ddc-care.com/"
    static var DefaultTime:Int = 5
    static var localizedCountry: [String: String] = [
        "NA": "Namibia",
        "AC": "Ascension Island",
        "AD": "Andorra",
        "AE": "United Arab Emirates",
        "AF": "Afghanistan",
        "AG": "Antigua & Barbuda",
        "AI": "Anguilla",
        "AL": "Albania",
        "AM": "Armenia",
        "AO": "Angola",
        "AQ": "Antarctica",
        "AR": "Argentina",
        "AS": "American Samoa",
        "AT": "Austria",
        "AU": "Australia",
        "AW": "Aruba",
        "AX": "Åland Islands",
        "AZ": "Azerbaijan",
        "BA": "Bosnia & Herzegovina",
        "BB": "Barbados",
        "BD": "Bangladesh",
        "BE": "Belgium",
        "BF": "Burkina Faso",
        "BG": "Bulgaria",
        "BH": "Bahrain",
        "BI": "Burundi",
        "BJ": "Benin",
        "BL": "St. Barthélemy",
        "BM": "Bermuda",
        "BN": "Brunei",
        "BO": "Bolivia",
        "BQ": "Caribbean Netherlands",
        "BR": "Brazil",
        "BS": "Bahamas",
        "BT": "Bhutan",
        "BW": "Botswana",
        "BY": "Belarus",
        "BZ": "Belize",
        "CA": "Canada",
        "CC": "Cocos (Keeling) Islands",
        "CD": "Congo - Kinshasa",
        "CF": "Central African Republic",
        "CG": "Congo - Brazzaville",
        "CH": "Switzerland",
        "CI": "Côte d’Ivoire",
        "CK": "Cook Islands",
        "CL": "Chile",
        "CM": "Cameroon",

        "CO": "Colombia",
        "CR": "Costa Rica",
        "CU": "Cuba",
        "CV": "Cape Verde",
        "CW": "Curaçao",
        "CX": "Christmas Island",
        "CY": "Cyprus",
        "CZ": "Czechia",

        "DG": "Diego Garcia",
        "DJ": "Djibouti",
        "DK": "Denmark",
        "DM": "Dominica",
        "DO": "Dominican Republic",
        "DZ": "Algeria",
        "EA": "Ceuta & Melilla",
        "EC": "Ecuador",
        "EE": "Estonia",
        "EG": "Egypt",
        "EH": "Western Sahara",
        "ER": "Eritrea",

        "ET": "Ethiopia",
        "FI": "Finland",
        "FJ": "Fiji",
        "FK": "Falkland Islands",
        "FM": "Micronesia",
        "FO": "Faroe Islands",

        "GA": "Gabon",
        "GB": "United Kingdom",
        "GD": "Grenada",
        "GE": "Georgia",
        "GF": "French Guiana",
        "GG": "Guernsey",
        "GH": "Ghana",
        "GI": "Gibraltar",
        "GL": "Greenland",
        "GM": "Gambia",
        "GN": "Guinea",
        "GP": "Guadeloupe",
        "GQ": "Equatorial Guinea",
        "GR": "Greece",
        "GS": "South Georgia & South Sandwich Islands",
        "GT": "Guatemala",
        "GU": "Guam",
        "GW": "Guinea-Bissau",
        "GY": "Guyana",

        "HN": "Honduras",
        "HR": "Croatia",
        "HT": "Haiti",
        "HU": "Hungary",
        "IC": "Canary Islands",
        "ID": "Indonesia",
        "IE": "Ireland",
        "IL": "Israel",
        "IM": "Isle of Man",
        "IN": "India",
        "IO": "British Indian Ocean Territory",
        "IQ": "Iraq",

        "IS": "Iceland",

        "JE": "Jersey",
        "JM": "Jamaica",
        "JO": "Jordan",

        "KE": "Kenya",
        "KG": "Kyrgyzstan",
        "KH": "Cambodia",
        "KI": "Kiribati",
        "KM": "Comoros",
        "KN": "St. Kitts & Nevis",
        "KP": "North Korea",

        "KW": "Kuwait",
        "KY": "Cayman Islands",
        "KZ": "Kazakhstan",
        "LA": "Laos",
        "LB": "Lebanon",
        "LC": "St. Lucia",
        "LI": "Liechtenstein",
        "LK": "Sri Lanka",
        "LR": "Liberia",
        "LS": "Lesotho",
        "LT": "Lithuania",
        "LU": "Luxembourg",
        "LV": "Latvia",
        "LY": "Libya",
        "MA": "Morocco",
        "MC": "Monaco",
        "MD": "Moldova",
        "ME": "Montenegro",
        "MF": "St. Martin",
        "MG": "Madagascar",
        "MH": "Marshall Islands",
        "MK": "North Macedonia",
        "ML": "Mali",
        "MM": "Myanmar (Burma)",
        "MN": "Mongolia",

        "MP": "Northern Mariana Islands",
        "MQ": "Martinique",
        "MR": "Mauritania",
        "MS": "Montserrat",
        "MT": "Malta",
        "MU": "Mauritius",
        "MV": "Maldives",
        "MW": "Malawi",
        "MX": "Mexico",
        "MY": "Malaysia",
        "MZ": "Mozambique",
        "NC": "New Caledonia",
        "NE": "Niger",
        "NF": "Norfolk Island",
        "NG": "Nigeria",
        "NI": "Nicaragua",
        "NL": "Netherlands",
        "NO": "Norway",
        "NP": "Nepal",
        "NR": "Nauru",
        "NU": "Niue",
        "NZ": "New Zealand",
        "OM": "Oman",
        "PA": "Panama",
        "PE": "Peru",
        "PF": "French Polynesia",
        "PG": "Papua New Guinea",
        "PH": "Philippines",
        "PK": "Pakistan",
        "PL": "Poland",
        "PM": "St. Pierre & Miquelon",
        "PN": "Pitcairn Islands",
        "PR": "Puerto Rico",
        "PS": "Palestinian Territories",
        "PT": "Portugal",
        "PW": "Palau",
        "PY": "Paraguay",
        "QA": "Qatar",
        "RE": "Réunion",
        "RO": "Romania",
        "RS": "Serbia",
        "RU": "Russia",
        "RW": "Rwanda",
        "SA": "Saudi Arabia",
        "SB": "Solomon Islands",
        "SC": "Seychelles",
        "SD": "Sudan",
        "SE": "Sweden",

        "SH": "St. Helena",
        "SI": "Slovenia",
        "SJ": "Svalbard & Jan Mayen",
        "SK": "Slovakia",
        "SL": "Sierra Leone",
        "SM": "San Marino",
        "SN": "Senegal",
        "SO": "Somalia",
        "SR": "Suriname",
        "SS": "South Sudan",
        "ST": "São Tomé & Príncipe",
        "SV": "El Salvador",
        "SX": "Sint Maarten",
        "SY": "Syria",
        "SZ": "Eswatini",
        "TA": "Tristan da Cunha",
        "TC": "Turks & Caicos Islands",
        "TD": "Chad",
        "TF": "French Southern Territories",
        "TG": "Togo",
        "TH": "Thailand",
        "TJ": "Tajikistan",
        "TK": "Tokelau",
        "TL": "Timor-Leste",
        "TM": "Turkmenistan",
        "TN": "Tunisia",
        "TO": "Tonga",
        "TR": "Turkey",
        "TT": "Trinidad & Tobago",
        "TV": "Tuvalu",

        "TZ": "Tanzania",
        "UA": "Ukraine",
        "UG": "Uganda",
        "UM": "U.S. Outlying Islands",
        "US": "United States",
        "UY": "Uruguay",
        "UZ": "Uzbekistan",
        "VA": "Vatican City",
        "VC": "St. Vincent & Grenadines",
        "VE": "Venezuela",
        "VG": "British Virgin Islands",
        "VI": "U.S. Virgin Islands",
        "VN": "Vietnam",
        "VU": "Vanuatu",
        "WF": "Wallis & Futuna",
        "WS": "Samoa",
        "XA": "Pseudo-Accents",
        "XB": "Pseudo-Bidi",
        "XK": "Kosovo",
        "YE": "Yemen",
        "YT": "Mayotte",
        "ZA": "South Africa",
        "ZM": "Zambia",
        "ZW": "Zimbabwe",
        "CN": "China",
        "HK": "Hong Kong SAR China",
        "MO": "Macao SAR China",
        "TW": "Taiwan",
        "KR": "South Korea",
        "JP": "Japan",
        "SG": "Singapore",
        "IT": "Italy",
        "IR": "Iran",
        "FR": "France",
        "DE": "Germany",
        "ES": "Spain"
    ]
    
    static let DefaultProvinceListRev: [Dictionary<String, String>] = [
        ["th":"กรุงเทพมหานคร", "en":"Bangkok","id":"10"],
        ["th":"สมุทรปราการ", "en":"Samut Prakan","id":"11"],
        ["th":"นนทบุรี", "en":"Nonthaburi","id":"12"],
        ["th":"ปทุมธานี", "en":"Pathum Thani","id":"13"],
        ["th":"พระนครศรีอยุธยา", "en":"Phra Nakhon Si Ayutthaya","id":"14"],
        ["th":"อ่างทอง", "en":"Ang Thong","id":"15"],
        ["th":"ลพบุรี", "en":"Loburi","id":"16"],
        ["th":"สิงห์บุรี", "en":"Sing Buri","id":"17"],
        ["th":"ชัยนาท", "en":"Chai Nat","id":"18"],
        ["th":"สระบุรี", "en":"Saraburi","id":"19"],
        ["th":"ชลบุรี", "en":"Chon Buri","id":"20"],
        ["th":"ระยอง", "en":"Rayong","id":"21"],
        ["th":"จันทบุรี", "en":"Chanthaburi","id":"22"],
        ["th":"ตราด", "en":"Trat","id":"23"],
        ["th":"ฉะเชิงเทรา", "en":"Chachoengsao","id":"24"],
        ["th":"ปราจีนบุรี", "en":"Prachin Buri","id":"25"],
        ["th":"นครนายก", "en":"Nakhon Nayok","id":"26"],
        ["th":"สระแก้ว", "en":"Sa Kaeo","id":"27"],
        ["th":"นครราชสีมา", "en":"Nakhon Ratchasima","id":"30"],
        ["th":"บุรีรัมย์", "en":"Buri Ram","id":"31"],
        ["th":"สุรินทร์", "en":"Surin","id":"32"],
        ["th":"ศรีสะเกษ", "en":"Si Sa Ket","id":"33"],
        ["th":"อุบลราชธานี", "en":"Ubon Ratchathani","id":"34"],
        ["th":"ยโสธร", "en":"Yasothon","id":"35"],
        ["th":"ชัยภูมิ", "en":"Chaiyaphum","id":"36"],
        ["th":"อำนาจเจริญ", "en":"Amnat Charoen","id":"37"],
        ["th":"บึงกาฬ", "en":"Bueng Kan","id":"38"],
        ["th":"หนองบัวลำภู", "en":"Nong Bua Lam Phu","id":"39"],
        ["th":"ขอนแก่น", "en":"Khon Kaen","id":"40"],
        ["th":"อุดรธานี", "en":"Udon Thani","id":"41"],
        ["th":"เลย", "en":"Loei","id":"42"],
        ["th":"หนองคาย", "en":"Nong Khai","id":"43"],
        ["th":"มหาสารคาม", "en":"Maha Sarakham","id":"44"],
        ["th":"ร้อยเอ็ด", "en":"Roi Et","id":"45"],
        ["th":"กาฬสินธุ์", "en":"Kalasin","id":"46"],
        ["th":"สกลนคร", "en":"Sakon Nakhon","id":"47"],
        ["th":"นครพนม", "en":"Nakhon Phanom","id":"48"],
        ["th":"มุกดาหาร", "en":"Mukdahan","id":"49"],
        ["th":"เชียงใหม่", "en":"Chiang Mai","id":"50"],
        ["th":"ลำพูน", "en":"Lamphun","id":"51"],
        ["th":"ลำปาง", "en":"Lampang","id":"52"],
        ["th":"อุตรดิตถ์", "en":"Uttaradit","id":"53"],
        ["th":"แพร่", "en":"Phrae","id":"54"],
        ["th":"น่าน", "en":"Nan","id":"55"],
        ["th":"พะเยา", "en":"Phayao","id":"56"],
        ["th":"เชียงราย", "en":"Chiang Rai","id":"57"],
        ["th":"แม่ฮ่องสอน", "en":"Mae Hong Son","id":"58"],
        ["th":"นครสวรรค์", "en":"Nakhon Sawan","id":"60"],
        ["th":"อุทัยธานี", "en":"Uthai Thani","id":"61"],
        ["th":"กำแพงเพชร", "en":"Kamphaeng Phet","id":"62"],
        ["th":"ตาก", "en":"Tak","id":"63"],
        ["th":"สุโขทัย", "en":"Sukhothai","id":"64"],
        ["th":"พิษณุโลก", "en":"Phitsanulok","id":"65"],
        ["th":"พิจิตร", "en":"Phichit","id":"66"],
        ["th":"เพชรบูรณ์", "en":"Phetchabun","id":"67"],
        ["th":"ราชบุรี", "en":"Ratchaburi","id":"70"],
        ["th":"กาญจนบุรี", "en":"Kanchanaburi","id":"71"],
        ["th":"สุพรรณบุรี", "en":"Suphan Buri","id":"72"],
        ["th":"นครปฐม", "en":"Nakhon Pathom","id":"73"],
        ["th":"สมุทรสาคร", "en":"Samut Sakhon","id":"74"],
        ["th":"สมุทรสงคราม", "en":"Samut Songkhram","id":"75"],
        ["th":"เพชรบุรี", "en":"Phetchaburi","id":"76"],
        ["th":"ประจวบคีรีขันธ์", "en":"Prachuap Khiri Khan","id":"77"],
        ["th":"นครศรีธรรมราช", "en":"Nakhon Si Thammarat","id":"80"],
        ["th":"กระบี่", "en":"Krabi","id":"81"],
        ["th":"พังงา", "en":"Phangnga","id":"82"],
        ["th":"ภูเก็ต", "en":"Phuket","id":"83"],
        ["th":"สุราษฎร์ธานี", "en":"Surat Thani","id":"84"],
        ["th":"ระนอง", "en":"Ranong","id":"85"],
        ["th":"ชุมพร", "en":"Chumphon","id":"86"],
        ["th":"สงขลา", "en":"Songkhla","id":"90"],
        ["th":"สตูล", "en":"Satun","id":"91"],
        ["th":"ตรัง", "en":"Trang","id":"92"],
        ["th":"พัทลุง", "en":"Phatthalung","id":"93"],
        ["th":"ปัตตานี", "en":"Pattani","id":"94"],
        ["th":"ยะลา", "en":"Yala","id":"95"],
        ["th":"นราธิวาส", "en":"Narathiwat","id":"96"],
    ] as [Dictionary<String, String>]
    
    static let DefaultOrgListRev: [Dictionary<String, String>] = [
        ["th":"กรมควบคุมโรค", "en":"กรมควบคุมโรค","id":"A0"],
        ["th":"สคร. 1", "en":"สคร. 1","id":"A1"],
        ["th":"สคร. 2", "en":"สคร. 2","id":"A2"],
        ["th":"สคร. 3", "en":"สคร. 3","id":"A3"],
        ["th":"สคร. 4", "en":"สคร. 4","id":"A4"],
        ["th":"สคร. 5", "en":"สคร. 5","id":"A5"],
        ["th":"สคร. 6", "en":"สคร. 6","id":"A6"],
        ["th":"สคร. 7", "en":"สคร. 7","id":"A7"],
        ["th":"สคร. 8", "en":"สคร. 8","id":"A8"],
        ["th":"สคร. 9", "en":"สคร. 9","id":"A9"],
        ["th":"สคร. 10", "en":"สคร. 10","id":"AA"],
        ["th":"สคร. 11", "en":"สคร. 11","id":"AB"],
        ["th":"สคร. 12", "en":"สคร. 12","id":"AC"],
        ["th":"สคร. 13", "en":"สคร. 13","id":"AD"]
    ] as [Dictionary<String, String>]
    
}

