#! /usr/bin/env ruby

Class HiraganaHash
def initialize()
# set up the hash tables to convert phonetics to hiragana
# they are split out by how many characters in the phonic

# use @@ to define class attributes

@@test = 'ok'

@@hash3 = {
'chi' => 'ち',
'shi' => 'し',
'tsu' => 'つ'
}

@@hash2 = {
'ka' => 'か',
'ga' => 'が',
'ki' => 'き',
'gi' => 'ぎ',
'ku' => 'く',
'gu' => 'ぐ',
'ke' => 'け',
'ge' => 'げ',
'ko' => 'こ',
'go' => 'ご',
'sa' => 'さ',
'za' => 'ざ',
'si' => 'し',
'zi' => 'じ',
'su' => 'す',
'zu' => 'ず',
'se' => 'せ',
'ze' => 'ぜ',
'so' => 'そ',
'zo' => 'ぞ',
'ta' => 'た',
'da' => 'だ',
'ti' => 'ち',
'di' => 'ぢ',
'tu' => 'つ',
'du' => 'づ',
'te' => 'て',
'de' => 'で',
'to' => 'と',
'do' => 'ど',
'na' => 'な',
'ni' => 'に',
'nu' => 'ぬ',
'ne' => 'ね',
'no' => 'の',
'ha' => 'は',
'ba' => 'ば',
'pa' => 'ぱ',
'hi' => 'ひ',
'bi' => 'び',
'pi' => 'ぴ',
'hu' => 'ふ',
'fu' => 'ふ',
'bu' => 'ぶ',
'pu' => 'ぷ',
'he' => 'へ',
'be' => 'べ',
'pe' => 'ぺ',
'ho' => 'ほ',
'bo' => 'ぼ',
'po' => 'ぽ',
'ma' => 'ま',
'mi' => 'み',
'mu' => 'む',
'me' => 'め',
'mo' => 'も',
'ya' => 'や',
'yu' => 'ゆ',
'yo' => 'よ',
'ra' => 'ら',
'ri' => 'り',
'ru' => 'る',
're' => 'れ',
'ro' => 'ろ',
'wa' => 'わ',
'wi' => 'ゐ',
'we' => 'ゑ',
'wo' => 'を',
'vu' => 'ゔ'
}

@@hash1 = {
'n' => 'ん',
'a' => 'あ',
'i' => 'い',
'u' => 'う',
'e' => 'え',
'o' => 'お'
}
end # of initialize method

# see http://tlt.its.psu.edu/suggestions/international/bylanguage/japanesecharthiragana.html
=begin BLOCK COMMENT
Character Name	Character	Hex Entity
HIRAGANA LETTER A	あ	&#x3042
HIRAGANA LETTER I	い	&#x3044
HIRAGANA LETTER U	う	&#x3046
HIRAGANA LETTER E	え	&#x3048
HIRAGANA LETTER O	お	&#x304A
HIRAGANA LETTER KA	か	&#x304B
HIRAGANA LETTER GA	が	&#x304C
HIRAGANA LETTER KI	き	&#x304D
HIRAGANA LETTER GI	ぎ	&#x304E
HIRAGANA LETTER KU	く	&#x304F
HIRAGANA LETTER GU	ぐ	&#x3050
HIRAGANA LETTER KE	け	&#x3051
HIRAGANA LETTER GE	げ	&#x3052
HIRAGANA LETTER KO	こ	&#x3053
HIRAGANA LETTER GO	ご	&#x3054
HIRAGANA LETTER SA	さ	&#x3055
HIRAGANA LETTER ZA	ざ	&#x3056
HIRAGANA LETTER SI	し	&#x3057
HIRAGANA LETTER ZI	じ	&#x3058
HIRAGANA LETTER SU	す	&#x3059
HIRAGANA LETTER ZU	ず	&#x305A
HIRAGANA LETTER SE	せ	&#x305B
HIRAGANA LETTER ZE	ぜ	&#x305C
HIRAGANA LETTER SO	そ	&#x305D
HIRAGANA LETTER ZO	ぞ	&#x305E
HIRAGANA LETTER TA	た	&#x305F
HIRAGANA LETTER DA	だ	&#x3060
HIRAGANA LETTER TI	ち	&#x3061
HIRAGANA LETTER DI	ぢ	&#x3062
HIRAGANA LETTER TU	つ	&#x3064
HIRAGANA LETTER DU	づ	&#x3065
HIRAGANA LETTER TE	て	&#x3066
HIRAGANA LETTER DE	で	&#x3067
HIRAGANA LETTER TO	と	&#x3068
HIRAGANA LETTER DO	ど	&#x3069
HIRAGANA LETTER NA	な	&#x306A
HIRAGANA LETTER NI	に	&#x306B
HIRAGANA LETTER NU	ぬ	&#x306C
HIRAGANA LETTER NE	ね	&#x306D
HIRAGANA LETTER NO	の	&#x306E
HIRAGANA LETTER HA	は	&#x306F
HIRAGANA LETTER BA	ば	&#x3070
HIRAGANA LETTER PA	ぱ	&#x3071
HIRAGANA LETTER HI	ひ	&#x3072
HIRAGANA LETTER BI	び	&#x3073
HIRAGANA LETTER PI	ぴ	&#x3074
HIRAGANA LETTER HU	ふ	&#x3075
HIRAGANA LETTER BU	ぶ	&#x3076
HIRAGANA LETTER PU	ぷ	&#x3077
HIRAGANA LETTER HE	へ	&#x3078
HIRAGANA LETTER BE	べ	&#x3079
HIRAGANA LETTER PE	ぺ	&#x307A
HIRAGANA LETTER HO	ほ	&#x307B
HIRAGANA LETTER BO	ぼ	&#x307C
HIRAGANA LETTER PO	ぽ	&#x307D
HIRAGANA LETTER MA	ま	&#x307E
HIRAGANA LETTER MI	み	&#x307F
HIRAGANA LETTER MU	む	&#x3080
HIRAGANA LETTER ME	め	&#x3081
HIRAGANA LETTER MO	も	&#x3082
HIRAGANA LETTER YA	や	&#x3084
HIRAGANA LETTER YU	ゆ	&#x3086
HIRAGANA LETTER YO	よ	&#x3088
HIRAGANA LETTER RA	ら	&#x3089
HIRAGANA LETTER RI	り	&#x308A
HIRAGANA LETTER RU	る	&#x308B
HIRAGANA LETTER RE	れ	&#x308C
HIRAGANA LETTER RO	ろ	&#x308D
HIRAGANA LETTER WA	わ	&#x308F
HIRAGANA LETTER WI	ゐ	&#x3090
HIRAGANA LETTER WE	ゑ	&#x3091
HIRAGANA LETTER WO	を	&#x3092
HIRAGANA LETTER N	ん	&#x3093
HIRAGANA LETTER VU	ゔ	&#x3094
=end

end # of class
