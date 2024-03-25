package
{

	public class HangulUtil
	{

		public function HangulUtil()
		{

		}
		var FIRST_STRING:Array = ["ㄱ","ㄲ","ㄴ","ㄷ","ㄸ","ㄹ","ㅁ","ㅂ","ㅃ","ㅅ","ㅆ","ㅇ","ㅈ","ㅉ","ㅊ","ㅋ","ㅌ","ㅍ","ㅎ"];
		var FIRST_MATCH_STRING:Array = ["r","R","s","e","E","f","a","q","Q","t","T","d","w","W","c","z","x","v","g"];
		var SECOND_STRING:Array = ["ㅏ","ㅐ","ㅑ","ㅒ","ㅓ","ㅔ","ㅕ","ㅖ","ㅗ","ㅘ","ㅙ","ㅚ","ㅛ","ㅜ","ㅝ","ㅞ","ㅟ","ㅠ","ㅡ","ㅢ","ㅣ"];
		var SECOND_MATCH_STRING:Array = ["k","o","i","O","j","p","u","P","h","hk","ho","hl","y","n","nj","np","nl","b","m","ml","l"];
		var THIRD_STRING:Array = ["ㄱ","ㄲ","ㄳ","ㄴ","ㄵ","ㄶ","ㄷ","ㄹ","ㄺ","ㄻ","ㄼ","ㄽ","ㄾ","ㄿ","ㅀ","ㅁ","ㅂ","ㅄ","ㅅ","ㅆ","ㅇ","ㅈ","ㅊ","ㅋ","ㅌ","ㅍ","ㅎ"];
		var THIRD_MATCH_STRING:Array = ["r","R","rt","s","sw","sg","e","f","fr","fa","fq","ft","fx","fv","fg","a","q","qt","t","T","d","w","c","z","x","v ","g"];
		var THIRD_2:Array = [" ","ㄱ","ㄲ","ㄳ","ㄴ","ㄵ","ㄶ","ㄷ","ㄹ","ㄺ","ㄻ","ㄼ","ㄽ","ㄾ","ㄿ","ㅀ","ㅁ","ㅂ","ㅄ","ㅅ","ㅆ","ㅇ","ㅈ","ㅊ","ㅋ","ㅌ","ㅍ","ㅎ"];
		var THIRD_M2:Array = [" ","r","R","rt","s","sw","sg","e","f","fr","fa","fq","ft","fx","fv","fg","a","q","qt","t","T","d","w","c","z","x","v ","g"];
		var CHANGE_SECOND_STRING:Array = ["ㅘ","ㅙ","ㅚ","ㅝ","ㅞ","ㅟ","ㅢ"];
		var CHANGE_SECOND_MATCH_STRING:Array = ["hk","ho","hl","nj","np","nl","ml"];
		var CHANGE_SECOND_MATCH_STRING_HANGUL:Array = ["ㅗㅏ","ㅗㅐ","ㅗㅣ","ㅜㅓ","ㅜㅔ","ㅜㅣ","ㅡㅣ"];
		var CHANGE_THIRD_STRING:Array = ["ㄳ","ㄵ","ㄶ","ㄺ","ㄻ","ㄼ","ㄽ","ㄾ","ㄿ","ㅀ","ㅄ"];
		var CHANGE_THIRD_MATCH_STRING:Array = ["rt","sw","sg","fr","fa","fq","ft","fx","fv","fg","qt"];
		var CHANGE_THIRD_MATCH_STRING2:Array = ["ㄱㅅ","ㄴㅈ","ㄴㅎ","ㄹㄱ","ㄹㅁ","ㄹㅂ","ㄹㅅ","ㄹㅌ","ㄹㅍ","ㄹㅎ","ㅂㅅ"];
		var NOT_SHIFT:Array = ["y","u","i","a","s","d","f","g","h","j","k","l","z","x","c","v","b","n","m"];
		var NOT_BIGSHIFT:Array = ["Y","U","I","A","S","D","F","G","H","J","K","L","Z","X","C","V","B","N","M"];
		var FIRST_CHAR:Array = ['ㄱ','ㄲ','ㄴ','ㄷ','ㄸ','ㄹ','ㅁ','ㅂ','ㅃ','ㅅ','ㅆ','ㅇ','ㅈ','ㅉ','ㅊ','ㅋ','ㅌ','ㅍ','ㅎ'];
		var SECOND_CHAR:Array = ['ㅏ','ㅐ','ㅑ','ㅒ','ㅓ','ㅔ','ㅕ','ㅖ','ㅗ','ㅘ','ㅙ','ㅚ','ㅛ','ㅜ','ㅝ','ㅞ','ㅟ','ㅠ','ㅡ','ㅢ','ㅣ'];
		var THIRD_CHAR:Array = [[],['ㄱ'],['ㄱ','ㄱ'],['ㄱ','ㅅ'],['ㄴ'],['ㄴ','ㅈ'],['ㄴ','ㅎ'],['ㄷ'],['ㄹ'],['ㄹ','ㄱ'],['ㄹ','ㅁ'],['ㄹ','ㅂ'],['ㄹ','ㅅ'],['ㄹ','ㅌ'],['ㄹ','ㅍ'],['ㄹ','ㅎ'],['ㅁ'],['ㅂ'],['ㅂ','ㅅ'],['ㅅ'],['ㅅ','ㅅ'],['ㅇ'],['ㅈ'],['ㅊ'],['ㅋ'],['ㅌ'],['ㅍ'],['ㅎ']];

public function ArrayPrint(array:Array)
{

	for (var i:int = 0; i< array.length; i++)
	{
		trace(array[i]);
	}
}



public function ArrayRemove(array:Array,removeindex:int)
{


array.splice(removeindex, 1);



}




function toCharArray(args:String):Array
{
	var ReturnArray:Array = new Array  ;

	for (var i:int = 0; i < args.length; i++)
	{
		ReturnArray[i] = args.charAt(i);
	}

	return ReturnArray;
}
public function AdvancedReplace(args:String,ReplaceA:String,ReplaceB:String):String
{
	for (; args.indexOf(ReplaceA) != -1; args = args.replace(ReplaceA,ReplaceB))
	{

	}
	return args;
}
function isJoHapHanGul(OneHangul:String):Boolean
{

	var isHangul:Boolean = false;
	var charNumber:int = OneHangul.charCodeAt();
	if (((44031 < charNumber) && charNumber < 55204))
	{
		isHangul = true;
	}
	return isHangul;
}

function Char_CHANGE_String(comVal:String):String
{

	var charTemp:String = comVal;
	var BASE_CODE:int = 44032;
	var CHOSUNG:int = 588;
	var JUNGSUNG:int = 28;
	var cBase:int = charTemp.charCodeAt(0) - BASE_CODE;

	// 초성

	var c1:int = cBase / CHOSUNG;

	// 종성
	var c2:int = (cBase - (CHOSUNG * c1)) / JUNGSUNG;

	// 종성
	var c3:int = ((cBase - (CHOSUNG * c1)) - (JUNGSUNG * c2));

	var FinalreturnString:String = "";
	if (getElements(comVal).length == 1)
	{
		FinalreturnString =  FIRST_STRING[c1];
	}
	if (getElements(comVal).length == 2)
	{
		FinalreturnString =  FIRST_STRING[c1] + SECOND_STRING[c2];
	}
	if (getElements(comVal).length == 3)
	{
		FinalreturnString =  FIRST_STRING[c1] + SECOND_STRING[c2] + THIRD_STRING[c3 - 1];
	}
	if (getElements(comVal).length == 4)
	{
		FinalreturnString =  FIRST_STRING[c1] + SECOND_STRING[c2] + THIRD_STRING[c3 - 1];
	}
	return FinalreturnString;
}
function getElements(ch:String):Array
{


	return getElementsint(ch.charCodeAt(0));
}
//char배열 반환
function ArrayCopy(a:Array,AStart:int,b:Array,BStart:int,lth:int)
{
	var Bplusint:int = 0;
	for (var i:int = AStart; i < AStart + lth; i++)
	{

		b[BStart + Bplusint] = a[i];
		Bplusint++;
	}


}









function getElementsint(ch:int):Array
{
	if (((ch < 44032) || ch > 55203))
	{
		var returnchararray:Array = [String.fromCharCode(ch)];

		return returnchararray;
	}

	ch = ch - 44032;
	var firstint:int = ch / 588;
	var temp:int = ch % 588;
	var secondint:int = temp / 28;
	var third:int = temp % 28;


	var returnChar:Array = new Array(String.fromCharCode((2 + THIRD_CHAR[third].length)));

	returnChar[0] = FIRST_CHAR[firstint];
	returnChar[1] = SECOND_CHAR[secondint];
	ArrayCopy(THIRD_CHAR[third],0,returnChar,2,THIRD_CHAR[third].length);


	return returnChar;
}









public function HangulDisassemble(ChangeIt:String,TwoJaumCombine:Boolean,TwoMoumCombine:Boolean):String
{

	var ChangeItChar:Array = toCharArray(ChangeIt);
	ChangeIt = "";

	for (var i:int = 0; i < ChangeItChar.length; i++)
	{
		if (isJoHapHanGul(ChangeItChar[i]))
		{

			if ((i == 0))
			{
				ChangeIt = Char_CHANGE_String(ChangeItChar[i]);
			}
			else
			{
				ChangeIt = ChangeIt + Char_CHANGE_String(ChangeItChar[i]);
			}
		}
		else
		{

			if ((i == 0))
			{
				ChangeIt = ChangeItChar[i] ;
			}
			else
			{
				ChangeIt = ChangeIt + ChangeItChar[i];
			}
		}
	}

	if ( !TwoMoumCombine)
	{
		for (var ii:int = 0; ii < CHANGE_SECOND_MATCH_STRING_HANGUL.length; ii++)
		{

			ChangeIt = AdvancedReplace(ChangeIt,CHANGE_SECOND_STRING[ii],CHANGE_SECOND_MATCH_STRING_HANGUL[ii]);


		}

	}

	if (! TwoJaumCombine)
	{
		for (var ik:int = 0; ik < CHANGE_THIRD_STRING.length; ik++)
		{
			ChangeIt = AdvancedReplace(ChangeIt,CHANGE_THIRD_STRING[ik],CHANGE_THIRD_MATCH_STRING2[ik]);
		}

	}

	return ChangeIt;
}












public function ChangeKorean(args:String):String
{
	var ChangeIt:String = args;
	// 스트링값의 사본을 저장
	for (var i:int = 0; i < NOT_BIGSHIFT.length; i++)
	{
		// 비정상적인 시프트가 눌린 문자들을 자동교정해준다.
		ChangeIt = AdvancedReplace(ChangeIt,NOT_BIGSHIFT[i],NOT_SHIFT[i]);
	}
	for (var i:int = 0; i < CHANGE_SECOND_MATCH_STRING.length; i++)
	{
		// 모음 중 이중모음 (ㅢ같은 것)의 영문자들을 한글 이중모음으로 치환해준다.
		ChangeIt = AdvancedReplace(ChangeIt,CHANGE_SECOND_MATCH_STRING[i],CHANGE_SECOND_STRING[i]);
	}

	for (var i:int = 0; i < SECOND_MATCH_STRING.length; i++)
	{
		// 영문자이던 모음을 한글 모음으로 치환해준다
		ChangeIt = AdvancedReplace(ChangeIt,SECOND_MATCH_STRING[i],SECOND_STRING[i]);

	}
	for (var i:int = 0; i < FIRST_MATCH_STRING.length; i++)
	{
		// 이중자음 제외의 영문자 자음을 한글 자음으로 치환해준다.
		ChangeIt = AdvancedReplace(ChangeIt,FIRST_MATCH_STRING[i],FIRST_STRING[i]);
	}
	// for (var i:int = 0; i < CHANGE_THIRD_MATCH_STRING2.length; i++) {
	// ChangeIt = ChangeIt.replace(CHANGE_THIRD_MATCH_STRING2[i],
	// CHANGE_THIRD_STRING[i]);
	// }

	// /////////////여기까지 치환된 문자열들은 전혀 조합이 되지 않음 (직접 조합을 한 문자를 넣은 이상이 아니라면)

	// 아래 과정은 재조합을 위해 조합된 문자들의 조합을 풀어 자음 모음단으로 되돌리는 과정임
	var ChangeItChar:Array = toCharArray(ChangeIt);
	// char형 배열에 여태까지 바꾼 문자열들을 넣음
	ChangeIt = "";
	for (var i:int = 0; i < ChangeItChar.length; i++)
	{
		if (isJoHapHanGul(ChangeItChar[i]))
		{
			// 조합 한글이면 문자를 분리하여 적재함
			if ((i == 0))
			{
				ChangeIt = Char_CHANGE_String(ChangeItChar[i]);
			}
			else
			{
				ChangeIt = ChangeIt + Char_CHANGE_String(ChangeItChar[i]);
			}

		}
		else
		{
			// 조합 한글이 아니면 그냥 문자를 그대로 적재함
			if ((i == 0))
			{
				ChangeIt = ChangeItChar[i] ;
			}
			else
			{
				ChangeIt = ChangeIt + ChangeItChar[i];
			}
		}
	}

	// 조합된 문자가 그대로 들어왔을때 위의 분리 과정을 거쳤을때에 이중 자음과 이중모음은 분리가 되지 않는다.
	// ex) 않 -> ㅇㅏㄶ
	// ex) 왜 -> ㅇㅙ

	// 이중 자음을 푸는 과정 ㄶ -> ㄴㅎ
	for (var i:int = 0; i < CHANGE_THIRD_STRING.length; i++)
	{
		ChangeIt = AdvancedReplace(ChangeIt,CHANGE_THIRD_STRING[i],CHANGE_THIRD_MATCH_STRING2[i]);
	}

	// 이중 모음을 푸는 과정 ㅙ -> ㅗㅐ
	for (var i:int = 0; i < CHANGE_SECOND_MATCH_STRING_HANGUL.length; i++)
	{
		ChangeIt = AdvancedReplace(ChangeIt,CHANGE_SECOND_MATCH_STRING_HANGUL[i],CHANGE_SECOND_STRING[i]);
	}
	// 모든 분리과정이 끝난 문자열들을 재분석하여 조합하기 위한 단계 시작

	// F -> 일반 자음을 표시함
	// S -> 일반 모음을 표시함

	var ChangeItFST:String = ChangeIt;

	for (var i:int = 0; i < FIRST_STRING.length; i++)
	{
		ChangeItFST = AdvancedReplace(ChangeItFST,FIRST_STRING[i],"F");
	}
	// 이중 자음을 제외한 자음들을 모두 F로 표시

	for (var i:int = 0; i < SECOND_STRING.length; i++)
	{
		ChangeItFST = AdvancedReplace(ChangeItFST,SECOND_STRING[i],"S");
	}

	// 모든 모음을 S로 표시함(이중 모음 포함)

	// 정보 표시 단계를 한단계 더 업그레이드함.
	var ChangeItFSTO:String = "";
	// 모음과 자음을 제외한 모든 문자를 O로 치환함.
	for (var i:int = 0; i < toCharArray(ChangeIt).length; i++)
	{
		if ((i == 0))
		{

			if (toCharArray(ChangeItFST)[i] == 'F' || toCharArray(ChangeItFST)[i] == 'S')
			{
				ChangeItFSTO = toCharArray(ChangeItFST)[i];
			}
			else
			{
				ChangeItFSTO =  "O";
			}
		}
		else
		{
			if (toCharArray(ChangeItFST)[i] == 'F' || toCharArray(ChangeItFST)[i] == 'S')
			{
				ChangeItFSTO = ChangeItFSTO + toCharArray(ChangeItFST)[i];
			}
			else
			{
				ChangeItFSTO = ChangeItFSTO + "O";
			}
		}
	}

	var Two_Level_Change_Ready_FSTO:Array = new Array  ;
	var Two_Level_Change_Ready_String:Array = new Array  ;
	var Three_Level_Change_Ready_String:Array = new Array  ;
	var Three_Level_Change_Ready_FSTO:Array = new Array  ;

	// String 리스트에 Char형 유형을 하나하나 String으로 파싱시켜서 Two LV FSTO랑 String 배열에 넣음
	// FS정보 따로 String 기존정보 따로
	for (var i:int = 0; i < ChangeIt.length; i++)
	{
		Two_Level_Change_Ready_FSTO.push(( ChangeItFSTO.charAt(i)));
		Two_Level_Change_Ready_String.push(( ChangeIt.charAt(i)));
	}

	// Two 반복문 돌림;
	for (var i:int = 0; i < Two_Level_Change_Ready_FSTO.length; i++)
	{

		// 바로 뒤문자가 배열의 끝을 넘지 않고
		if (((i + 1) < Two_Level_Change_Ready_FSTO.length))
		{
			// 지금 문자가 자음이고 바로 뒤문자가 모음이면?
			if (Two_Level_Change_Ready_FSTO[i].charAt(0) == 'F' && Two_Level_Change_Ready_FSTO[i + 1].charAt(0) == 'S')
			{

				// 업그레이드하는 정보 표시 배열에 FS -> 2로 표기한다
				Three_Level_Change_Ready_FSTO.push("2");
				// ㅇ + ㅏ = 아 가 되게하여서 업그레이드하는 문자 표시 배열에 아 를 집어넣는다.;
				Three_Level_Change_Ready_String.push((Two_Level_Change_Char(Two_Level_Change_Ready_String[i].charAt(0),Two_Level_Change_Ready_String[i + 1].charAt(0))));


				ArrayRemove(Two_Level_Change_Ready_FSTO,i + 1);

				ArrayRemove(Two_Level_Change_Ready_String,i + 1);
				// FS가 모여있을때 if문을 통과하여 치환해줄 수 있는데 다음 검사 요소가 자음이면 검사의 의미가 없으므로 지워준다.
			}
			else
			{

				// FS가 성립하지 않을 때, FF, SS , SF 등
				Three_Level_Change_Ready_FSTO.push(Two_Level_Change_Ready_FSTO[i]);
				Three_Level_Change_Ready_String.push(Two_Level_Change_Ready_String[i]);
			}
	}
	else
	{
		// 뒤 문자가 없으므로 연산과정 없이 그냥 넣어준다.
		Three_Level_Change_Ready_FSTO.push(Two_Level_Change_Ready_FSTO[i]);
		Three_Level_Change_Ready_String.push(Two_Level_Change_Ready_String[i]);
	}
}


// Three인 상태에서 정보 상태를 재조정함;
for (var i:int = 0; i < Three_Level_Change_Ready_FSTO.length; i++)
{
	// 뒤 문자가 배열의 끝을 넘지 않을때
	if (((i + 1) < Three_Level_Change_Ready_FSTO.length))
	{
		// ㄹㅁ 등의 이중 자음이 발견되었을때
		if (Three_Level_Change_Ready_FSTO[i].charAt(0) == 'F' && Three_Level_Change_Ready_FSTO[i + 1].charAt(0) == 'F')
		{
			// 일단 떨어져있는 상태의 String을 조합하여 ㄹ,ㅁ 을 ㄹㅁ이라는 통합 String으로 만든다.
			var replaceString:String = Three_Level_Change_Ready_String[i] + Three_Level_Change_Ready_String[i + 1];

			// 분리형 이중 자음을 조합형 이중 자음으로 파싱한다 ㄹㅁ -> ㄻ
			for (var si:int = 0; si < CHANGE_THIRD_MATCH_STRING.length; si++)
			{
				replaceString = replaceString.replace(CHANGE_THIRD_MATCH_STRING2[si],CHANGE_THIRD_STRING[si]);
			}
			// 영어에서 -> 한글로

			 if (replaceString.length == 1) {

			// FSTO 리스트에는 이중모음을 T로 기록함
			Three_Level_Change_Ready_FSTO[i] = "T";
			// 스트링 리스트에는 이중모음을 기록함
			Three_Level_Change_Ready_String[i] = replaceString;
			// 중복된 검사를 하지 않기 위해 배열 요소 제거
			ArrayRemove(Three_Level_Change_Ready_FSTO,i + 1);
			ArrayRemove(Three_Level_Change_Ready_String,i + 1);
			 }
		}
	}
}

// 반복문
for (var i:int = 0; i < Three_Level_Change_Ready_FSTO.length; i++)
{
	// 뒤 글자가 배열의 끝을 넘지 않으면
	if (((i + 1) < Three_Level_Change_Ready_FSTO.length))
	{
		// 아ㄴ 이나 아ㄶ 같은게 존재하면 통과
		if (Three_Level_Change_Ready_FSTO[i].charAt(0) == '2' && Three_Level_Change_Ready_FSTO[i + 1].charAt(0) == 'F' || Three_Level_Change_Ready_FSTO[i].charAt(0) == '2' && Three_Level_Change_Ready_FSTO[i + 1].charAt(0) == 'T')
		{
			// 조합 함수에 넣기 위해서 종성 부분에 위치할 것만 따로 빼서 char에 넣음
			var JongSung:String = Three_Level_Change_Ready_String[i + 1].charAt(0);

			// 종성이 조합 안되는 경우는 아무 일도 일어나면 안되므로 조건문을 걸어줌
			if (! (((JongSung == 'ㅃ') || JongSung == 'ㅉ') || JongSung == 'ㄸ'))
			{
				// FSTO 정보리스트에 '안' 또는 '않'같은 문자들을 3으로 기록함
				Three_Level_Change_Ready_FSTO[i] = "3";
				// 스트링 리스트에 조합한 글자를 세트해줌
				Three_Level_Change_Ready_String[i] =  JoHap2to3(Three_Level_Change_Ready_String[i].charAt(0),Three_Level_Change_Ready_String[i + 1].charAt(0));
				// 중복 검사를 피하기 위해 제거
				ArrayRemove(Three_Level_Change_Ready_FSTO,i + 1);
				ArrayRemove(Three_Level_Change_Ready_String,i + 1);
			}
		}
	}
}

var FinalReturn:String = "";
for (var i:int = 0; i < Three_Level_Change_Ready_String.length; i++)
{
	if ((i == 0))
	{
		FinalReturn = Three_Level_Change_Ready_String[i];
	}
	else
	{
		FinalReturn = FinalReturn + Three_Level_Change_Ready_String[i];
	}
}
// ///////////4번째 조합 알고리즘
// 조합이 되지 않은 초성문자열 Third 형 조합형태 for
// 가+ㄴ 또는 가 ㄶ = 갆

return FinalReturn;
}

function Two_Level_Change_Char(F:String,S:String):String
{
var Fcode:int = 0;
var Scode:int = 0;
for (var i:int = 0; i < FIRST_CHAR.length; i++)
{
	if (FIRST_CHAR[i] == F)
	{
		Fcode = i;
	}
}
for (var i:int = 0; i < SECOND_CHAR.length; i++)
{
	if (SECOND_CHAR[i] == S)
	{
		Scode = i;
	}
}
var returnchar:String = String.fromCharCode((44032 + Fcode * 588) + Scode * 28);

return returnchar;
}

function JoHap2to3(hangul2:String,JongSung:String):String
{
var J1code:int = 0;
var J2code:int = 0;
var JongSungcode:int = 0;


var J1:String = Char_CHANGE_String(hangul2).charAt(0);
var J2:String = Char_CHANGE_String(hangul2).charAt(1);
for (var i:int = 0; i < FIRST_CHAR.length; i++)
{
	if (FIRST_CHAR[i] == J1)
	{
		J1code = i;
	}
}
for (var i:int = 0; i < SECOND_CHAR.length; i++)
{
	if (SECOND_CHAR[i] == J2)
	{
		J2code = i;
	}
}
for (var i:int = 0; i < THIRD_2.length; i++)
{
	if (THIRD_2[i].charAt(0) == JongSung)
	{
		JongSungcode = i;
	}
}

return String.fromCharCode(((((44032 + (J1code * 588)) + (J2code * 28)) + JongSungcode)));
}

public function HangulCombine(ChangeIt:String){
		var ChangeItChar:Array = toCharArray(ChangeIt);
	// char형 배열에 여태까지 바꾼 문자열들을 넣음
	ChangeIt = "";
	for (var i:int = 0; i < ChangeItChar.length; i++)
	{
		if (isJoHapHanGul(ChangeItChar[i]))
		{
			// 조합 한글이면 문자를 분리하여 적재함
			if ((i == 0))
			{
				ChangeIt = Char_CHANGE_String(ChangeItChar[i]);
			}
			else
			{
				ChangeIt = ChangeIt + Char_CHANGE_String(ChangeItChar[i]);
			}

		}
		else
		{
			// 조합 한글이 아니면 그냥 문자를 그대로 적재함
			if ((i == 0))
			{
				ChangeIt = ChangeItChar[i] ;
			}
			else
			{
				ChangeIt = ChangeIt + ChangeItChar[i];
			}
		}
	}

	// 조합된 문자가 그대로 들어왔을때 위의 분리 과정을 거쳤을때에 이중 자음과 이중모음은 분리가 되지 않는다.
	// ex) 않 -> ㅇㅏㄶ
	// ex) 왜 -> ㅇㅙ

	// 이중 자음을 푸는 과정 ㄶ -> ㄴㅎ
	for (var i:int = 0; i < CHANGE_THIRD_STRING.length; i++)
	{
		ChangeIt = AdvancedReplace(ChangeIt,CHANGE_THIRD_STRING[i],CHANGE_THIRD_MATCH_STRING2[i]);
	}

	// 이중 모음을 푸는 과정 ㅙ -> ㅗㅐ
	for (var i:int = 0; i < CHANGE_SECOND_MATCH_STRING_HANGUL.length; i++)
	{
		ChangeIt = AdvancedReplace(ChangeIt,CHANGE_SECOND_MATCH_STRING_HANGUL[i],CHANGE_SECOND_STRING[i]);
	}


	var ChangeItFST:String  = AdvancedReplace(AdvancedReplace(ChangeIt,"F","."),"S",".");
	for (var i:int = 0; i < FIRST_STRING.length; i++)
	{
		ChangeItFST = AdvancedReplace(ChangeItFST,FIRST_STRING[i],"F");
	}
	// 이중 자음을 제외한 자음들을 모두 F로 표시

	for (var i:int = 0; i < SECOND_STRING.length; i++)
	{
		ChangeItFST = AdvancedReplace(ChangeItFST,SECOND_STRING[i],"S");
	}

	// 모든 모음을 S로 표시함(이중 모음 포함)

	// 정보 표시 단계를 한단계 더 업그레이드함.
	var ChangeItFSTO:String = "";
	// 모음과 자음을 제외한 모든 문자를 O로 치환함.
	for (var i:int = 0; i < toCharArray(ChangeIt).length; i++)
	{
		if ((i == 0))
		{

			if (toCharArray(ChangeItFST)[i] == 'F' || toCharArray(ChangeItFST)[i] == 'S')
			{
				ChangeItFSTO = toCharArray(ChangeItFST)[i];
			}
			else
			{
				ChangeItFSTO =  "O";
			}
		}
		else
		{
			if (toCharArray(ChangeItFST)[i] == 'F' || toCharArray(ChangeItFST)[i] == 'S')
			{
				ChangeItFSTO = ChangeItFSTO + toCharArray(ChangeItFST)[i];
			}
			else
			{
				ChangeItFSTO = ChangeItFSTO + "O";
			}
		}
	}

	var Two_Level_Change_Ready_FSTO:Array = new Array  ;
	var Two_Level_Change_Ready_String:Array = new Array  ;
	var Three_Level_Change_Ready_String:Array = new Array  ;
	var Three_Level_Change_Ready_FSTO:Array = new Array  ;

	// String 리스트에 Char형 유형을 하나하나 String으로 파싱시켜서 Two LV FSTO랑 String 배열에 넣음
	// FS정보 따로 String 기존정보 따로
	for (var i:int = 0; i < ChangeIt.length; i++)
	{
		Two_Level_Change_Ready_FSTO.push(( ChangeItFSTO.charAt(i)));
		Two_Level_Change_Ready_String.push(( ChangeIt.charAt(i)));
	}

	// Two 반복문 돌림;
	for (var i:int = 0; i < Two_Level_Change_Ready_FSTO.length; i++)
	{

		// 바로 뒤문자가 배열의 끝을 넘지 않고
		if (((i + 1) < Two_Level_Change_Ready_FSTO.length))
		{
			// 지금 문자가 자음이고 바로 뒤문자가 모음이면?
			if (Two_Level_Change_Ready_FSTO[i].charAt(0) == 'F' && Two_Level_Change_Ready_FSTO[i + 1].charAt(0) == 'S')
			{

				// 업그레이드하는 정보 표시 배열에 FS -> 2로 표기한다
				Three_Level_Change_Ready_FSTO.push("2");
				// ㅇ + ㅏ = 아 가 되게하여서 업그레이드하는 문자 표시 배열에 아 를 집어넣는다.;
				Three_Level_Change_Ready_String.push((Two_Level_Change_Char(Two_Level_Change_Ready_String[i].charAt(0),Two_Level_Change_Ready_String[i + 1].charAt(0))));


				ArrayRemove(Two_Level_Change_Ready_FSTO,i + 1);

				ArrayRemove(Two_Level_Change_Ready_String,i + 1);
				// FS가 모여있을때 if문을 통과하여 치환해줄 수 있는데 다음 검사 요소가 자음이면 검사의 의미가 없으므로 지워준다.
			}
			else
			{

				// FS가 성립하지 않을 때, FF, SS , SF 등
				Three_Level_Change_Ready_FSTO.push(Two_Level_Change_Ready_FSTO[i]);
				Three_Level_Change_Ready_String.push(Two_Level_Change_Ready_String[i]);
			}
	}
	else
	{
		// 뒤 문자가 없으므로 연산과정 없이 그냥 넣어준다.
		Three_Level_Change_Ready_FSTO.push(Two_Level_Change_Ready_FSTO[i]);
		Three_Level_Change_Ready_String.push(Two_Level_Change_Ready_String[i]);
	}
}


// Three인 상태에서 정보 상태를 재조정함;
for (var i:int = 0; i < Three_Level_Change_Ready_FSTO.length; i++)
{
	// 뒤 문자가 배열의 끝을 넘지 않을때
	if (((i + 1) < Three_Level_Change_Ready_FSTO.length))
	{
		// ㄹㅁ 등의 이중 자음이 발견되었을때
		if (Three_Level_Change_Ready_FSTO[i].charAt(0) == 'F' && Three_Level_Change_Ready_FSTO[i + 1].charAt(0) == 'F')
		{
			// 일단 떨어져있는 상태의 String을 조합하여 ㄹ,ㅁ 을 ㄹㅁ이라는 통합 String으로 만든다.
			var replaceString:String = Three_Level_Change_Ready_String[i] + Three_Level_Change_Ready_String[i + 1];

			// 분리형 이중 자음을 조합형 이중 자음으로 파싱한다 ㄹㅁ -> ㄻ
			for (var si:int = 0; si < CHANGE_THIRD_MATCH_STRING.length; si++)
			{
				replaceString = replaceString.replace(CHANGE_THIRD_MATCH_STRING2[si],CHANGE_THIRD_STRING[si]);
			}
			// 영어에서 -> 한글로

			 if (replaceString.length == 1) { //

			// FSTO 리스트에는 이중모음을 T로 기록함
			Three_Level_Change_Ready_FSTO[i] = "T";
			// 스트링 리스트에는 이중모음을 기록함
			Three_Level_Change_Ready_String[i] = replaceString;
			// 중복된 검사를 하지 않기 위해 배열 요소 제거
			ArrayRemove(Three_Level_Change_Ready_FSTO,i + 1);
			ArrayRemove(Three_Level_Change_Ready_String,i + 1);
			 }
		}
	}
}




// 반복문
for (var i:int = 0; i < Three_Level_Change_Ready_FSTO.length; i++)
{
	// 뒤 글자가 배열의 끝을 넘지 않으면
	if (((i + 1) < Three_Level_Change_Ready_FSTO.length))
	{
		// 아ㄴ 이나 아ㄶ 같은게 존재하면 통과
		if (Three_Level_Change_Ready_FSTO[i].charAt(0) == '2' && Three_Level_Change_Ready_FSTO[i + 1].charAt(0) == 'F' || Three_Level_Change_Ready_FSTO[i].charAt(0) == '2' && Three_Level_Change_Ready_FSTO[i + 1].charAt(0) == 'T')
		{
			// 조합 함수에 넣기 위해서 종성 부분에 위치할 것만 따로 빼서 char에 넣음
			var JongSung:String = Three_Level_Change_Ready_String[i + 1].charAt(0);

			// 종성이 조합 안되는 경우는 아무 일도 일어나면 안되므로 조건문을 걸어줌
			if (! (((JongSung == 'ㅃ') || JongSung == 'ㅉ') || JongSung == 'ㄸ'))
			{
				// FSTO 정보리스트에 '안' 또는 '않'같은 문자들을 3으로 기록함
				Three_Level_Change_Ready_FSTO[i] = "3";
				// 스트링 리스트에 조합한 글자를 세트해줌
				Three_Level_Change_Ready_String[i] =  JoHap2to3(Three_Level_Change_Ready_String[i].charAt(0),Three_Level_Change_Ready_String[i + 1].charAt(0));
				// 중복 검사를 피하기 위해 제거
				ArrayRemove(Three_Level_Change_Ready_FSTO,i + 1);
				ArrayRemove(Three_Level_Change_Ready_String,i + 1);
			}
		}
	}
}


var FinalReturn:String = "";
for (var i:int = 0; i < Three_Level_Change_Ready_String.length; i++)
{
	if ((i == 0))
	{
		FinalReturn = Three_Level_Change_Ready_String[i];
	}
	else
	{
		FinalReturn = FinalReturn + Three_Level_Change_Ready_String[i];
	}
}

// ///////////4번째 조합 알고리즘
// 조합이 되지 않은 초성문자열 Third 형 조합형태 for
// 가+ㄴ 또는 가 ㄶ = 갆

return FinalReturn;


}





}

}
