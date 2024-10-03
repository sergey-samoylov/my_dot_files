syntax match txtHEADLINE /[A-Z.][-A-Z0-9 .,()_']*?\=\ze\(\s\+\*\|$\)/
syntax match txtHEADLINERUSSIAN /[А-Я.][-А-Я0-9 .,()_'"]*?\=\ze\(\s\+\*\|$\)/
syntax match txtSTARTHEADLINE /^[A-Z.][-A-Z0-9 .,()_']*?\=\ze\(\s\+\*\|$\)/
syntax match txtCollon /[A-z ]*:$/
syntax match txtCalendar /Calendar:/
syntax match txtMorning /Every morning:/
syntax match txtInfo /Info:/
syntax match txtNote /Note:/
syntax match txtTodo /Todo:/
syntax match txtHTTP /https\?:\/\/[A-Za-z0-9._\-\&:=()'"/\?#]*/
syntax match txtList /^[\-.][-A-zА-я0-9&.,_"() ]*/
syntax match txtListTab /^[\t.][A-z ]*/
syntax match txtArrow /^[\>.][A-z0-9. ]*/
syntax match txtComment /^[\#.][a-z ]*/
syntax match txtHEAD_BLUE_ON_BLACK /^[#][ ][A-Z ]*$/
syntax match txtMail /\S\+@\S\+.[A-z]\+/
syntax match txtMD /[#-)!+-~A-z0-9 ]*\.md/
syntax match txtTXT /[#-)!+-~A-z0-9]*.txt/
syntax match txtIMG /[#-)!+-~A-z0-9]*.png/
syntax match txtIMG /[#-)!+-~A-z0-9]*.jpg/
syntax match txtMUSIC /[#-)!+-~A-z0-9]*.ogg/
syntax match txtMUSIC /[#-)!+-~A-z0-9]*.opus/
syntax match txtMUSIC /[#-)!+-~A-z0-9]*.m4a/
syntax match txtMUSIC /[#-)!+-~A-z0-9]*.mp3/
syntax match txtBARS /\\\@<!|[#-)!+-~]\+|/
syntax match txtMoney /[0-9 ]*руб\./
syntax match txtDate /^[0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\}$/
syntax match txtTime /^\v\d{2}:\d{2}( - \d{2}:\d{2})?$/
syntax match txtQuoteWord /'[a-z]\{2,\}'/
syntax match txtCalend =\v<(Monday, |Tuesday, |Wednesday, |Thursday, |Friday, |Saturday, |Sunday, )(January |February |March |April |May |June |July |August |September |October |November |December )[0-9]*=
