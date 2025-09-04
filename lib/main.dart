import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:io';                           // File 사용
import 'package:path/path.dart' as path; // basename 사용
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';    // Flutter 기본 위젯
import 'package:file_selector/file_selector.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Myfirst(),
    );
  }
}

class Myfirst extends StatefulWidget {
  const Myfirst({super.key});

  @override
  State<Myfirst> createState() => _MyfirstState();
}

class _MyfirstState extends State<Myfirst> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Mysecond()),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final scaleX = size.width / 393;
    final scaleY = size.height / 852;
    return Scaffold(
      body : Container(

      width: size.width,
      height: size.height,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(color: Colors.white),
      child: Stack(
        children: [
          Positioned(
            left: 98*scaleX,
            top: 402*scaleY,
            child: Container(
              width: 197*scaleX,
              height: 48*scaleY,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('logo/logo.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    )
    );
  }
}

class Mysecond extends StatelessWidget {
  const Mysecond({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final scaleX = size.width / 393;
    final scaleY = size.height / 852;
    return Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: const Color(0xFFEDF0F2)),
          child: Stack(
            children: [
              Positioned(
                left: 24 * scaleX,
                top: 121 * scaleY,
                child: Container(
                  width: 345 * scaleX,
                  height: 190 * scaleY,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x0C000000),
                        blurRadius: 20,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 70*scaleX,
                top: 143*scaleY,
                child: Text(
                  '최근 판별 결과',
                  style: TextStyle(
                    color: const Color(0xFF111111),
                    fontSize: 13,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w400,
                    height: 1.40,
                    letterSpacing: -0.33,
                  ),
                ),
              ),
              Positioned(
                left: 44*scaleX,
                top: 170*scaleY,
                child: Container(
                  width: 305*scaleX,
                  height: 117*scaleY,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.50, -0.00),
                      end: Alignment(0.50, 1.00),
                      colors: [const Color(0xFFD9D9D9), const Color(0xFFACACAC)],
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ),
              Positioned(
                left: 145*scaleX,
                top: 151*scaleY,
                child: Text(
                  '영상 이름 (파일 경로)',
                  style: TextStyle(
                    color: const Color(0xFF767676),
                    fontSize: 7,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w400,
                    height: 1.40*scaleX,
                    letterSpacing: -0.17*scaleY,
                  ),
                ),
              ),
              Positioned(
                left: 44*scaleX,
                top: 291*scaleY,
                child: Container(
                  width: 305*scaleX,
                  height: 3*scaleY,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF8EFF9B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 186*scaleX,
                top: 295*scaleY,
                child: Text(
                  '100%',
                  style: TextStyle(
                    color: const Color(0xFF767676),
                    fontSize: 7,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                    height: 1.40,
                    letterSpacing: -0.17,
                  ),
                ),
              ),
              Positioned(
                left: 44*scaleX,
                top: 134*scaleY,
                child: Container(
                  width: 24*scaleX,
                  height: 24*scaleY,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('logo/logoimage.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 101*scaleX,
                top: 68*scaleY,
                child: Container(
                  width: 197*scaleX,
                  height: 48*scaleY,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('logo/logo.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 173*scaleX,
                top: 218*scaleY,
                child: Text(
                  '썸네일',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Positioned(
                left: 141.50*scaleX,
                top: 795.50*scaleY,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 9,
                  children: [
                    Text(
                      'DeepCounter',
                      style: TextStyle(
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 101*scaleX,
                top: 790*scaleY,
                child: Container(
                  width: 40*scaleX,
                  height: 40*scaleY,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 113*scaleX,
                top: 797*scaleY,
                child: Text(
                  '𝕯𝕻\n𝕮𝕽',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Positioned(
                left: 24*scaleX,
                top: 350*scaleY,
                child: Container(
                  width: 345*scaleX,
                  height: 85*scaleY,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("make/image0.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 24 * scaleX,
                top: 445 * scaleY,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Next1()), // 여기에 이동할 페이지 클래스 이름 작성
                    );
                  },
                  child: Container(
                    width: 345 * scaleX,
                    height: 85 * scaleY,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('make/image1.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                left: 24 * scaleX,
                top: 540 * scaleY,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Next2()), // 여기에 이동할 페이지 클래스 이름 작성
                    );
                  },
                  child: Container(
                    width: 345 * scaleX,
                    height: 85 * scaleY,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('make/image2.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                left: 24 * scaleX,
                top: 625 * scaleY,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Next3()), // 여기에 이동할 페이지 클래스 이름 작성
                    );
                  },
                  child: Container(
                    width: 347.50 * scaleX,
                    height: 114.50 * scaleY,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('make/image3.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
class Next3 extends StatelessWidget {
  const Next3({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final scaleX = size.width / 393;
    final scaleY = size.height / 852;
    return Scaffold(
        body : Container(
          width: size.width,
          height: size.height,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 24*scaleX,
                top: 153*scaleY,
                child: Container(
                  width: 345*scaleX,
                  height: 567*scaleY,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 20,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 59*scaleX,
                top: 172*scaleY,
                child: Text(
                  '자주 묻는 질문',
                  style: TextStyle(
                    color: const Color(0xFF111111),
                    fontSize: 13,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                    height: 1.40,
                    letterSpacing: -0.33,
                  ),
                ),
              ),
              Positioned(
                left: 35*scaleX,
                top: 225*scaleY,
                child: Text(
                  '(질문 데이터가 쌓이면 쓸 예정)',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                    height: 1.40,
                    letterSpacing: -0.33,
                  ),
                ),
              ),
              Positioned(
                left: 86*scaleX,
                top: 763*scaleY,
                child: Text(
                  '이 외 문의사항 : hongcheonu@naver.com',
                  style: TextStyle(
                    color: Colors.black.withValues(alpha: 110),
                    fontSize: 13,
                    fontFamily:'Pretendard',
                    fontWeight: FontWeight.w500,
                    height: 1.40,
                    letterSpacing: -0.33,
                  ),
                ),
              ),
              Positioned(
                left: 36*scaleX,
                top: 170*scaleY,
                child: Container(
                  width: 20*scaleX,
                  height: 20*scaleY,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("make/chat.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              Positioned(
                left: 24 * scaleX,
                top: 50 * scaleY,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Mysecond()), // 여기에 이동할 페이지 클래스 이름 작성
                    );
                  },
                  child: Container(
                    width: 347.50 * scaleX,
                    height: 114.50 * scaleY,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('make/image3.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                left: 101*scaleX,
                top: 790*scaleY,
                child: Container(
                  width: 197*scaleX,
                  height: 48*scaleY,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("logo/logo.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
Future<void> uploadVideoFile(BuildContext context, XFile result) async {
  // 로딩 표시
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (_) {
      final size = MediaQuery.of(context).size;
      final scaleX = size.width / 393;
      final scaleY = size.height / 852;

      return Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.zero,
        child: Container(
          width: 393 * scaleX,
          height: 852 * scaleY,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 24 * scaleX,
                top: 158 * scaleY,
                child: Container(
                  width: 345 * scaleX,
                  height: 567 * scaleY,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    shadows: [
                      const BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 20,
                        offset: Offset(0, 0),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 46 * scaleX,
                top: 174 * scaleY,
                child: GestureDetector(
                  onTap: () {
                    // POST 요청 중이어도 강제로 UI 닫고 페이지 이동
                    Navigator.of(context).pop(); // 로딩 다이얼로그 닫기
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => const Mysecond()), // 페이지 교체
                    );
                  },
                  child: Container(
                    width: 300 * scaleX,
                    height: 285 * scaleY,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("make/img.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 98 * scaleX,
                top: 790 * scaleY,
                child: Container(
                  width: 197 * scaleX,
                  height: 48 * scaleY,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("logo/logo.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 12 * scaleX,
                top: 454 * scaleY,
                child: Container(
                  width: 368 * scaleX,
                  height: 276 * scaleY,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("make/Frame.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 272 * scaleX,
                top: 626 * scaleY,
                child: const Opacity(
                  opacity: 0.32,
                  child: Text(
                    '-한대부고 건학이념 중..',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 7,
                      fontFamily:'Pretendard',
                      fontWeight: FontWeight.w800,
                      height: 1.40,
                      letterSpacing: -0.17,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 97 * scaleX,
                top: 63 * scaleY,
                child: Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                        text: '로딩중',
                        style: TextStyle(
                          color: Color(0xFFFF0000),
                          fontSize: 20,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w800,
                          height: 1.40,
                          letterSpacing: -0.50,
                        ),
                      ),
                      const TextSpan(
                        text: '(개발자 소개 페이지)',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w800,
                          height: 1.40,
                          letterSpacing: -0.38,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 133.51 * scaleX,
                top: 20.82 * scaleY,
                child: Opacity(
                  opacity: 0.18,
                  child: Container(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(-0.08),
                    width: 109.66 * scaleX,
                    height: 112.34 * scaleX,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("make/image17.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );

  try {
    var request = http.MultipartRequest(
      'POST',
      Uri.parse('http://192.0.0.2:5001/analyze'),
    );
    request.files.add(await http.MultipartFile.fromPath('video', result.path));
    var res = await request.send();

    // 로딩창 닫기
    if (Navigator.canPop(context)) Navigator.of(context).pop();

    if (res.statusCode == 200) {
      final body = await res.stream.bytesToString();
      final data = json.decode(body);
      final deepfakeResultText =
      data['deepfake_judgement'] == "0" ? "딥페이크 영상 O" : "딥페이크 영상 X";

      // 결과 다이얼로그 띄우고 확인 누르면 MySecond로 이동
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: const Text('분석 결과'),
            content: Text(deepfakeResultText),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // 결과창 닫기
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => const Mysecond()),
                  );
                },
                child: const Text('확인'),
              ),
            ],
          );
        },
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('❌ 분석 실패')),
      );
    }
  } catch (e) {
    if (Navigator.canPop(context)) Navigator.of(context).pop();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('에러 발생: $e')),
    );
  }
}



  class Next1 extends StatelessWidget {
  Future<void> _uploadVideo(BuildContext context) async {
    // 비디오 파일 선택
    final XFile? result = await openFile(
      acceptedTypeGroups: [
        XTypeGroup(
          label: 'videos',
          extensions: ['mp4', 'mov', 'avi'],
          uniformTypeIdentifiers: [
            'public.movie',       // 일반 비디오 파일
            'com.apple.quicktime-movie',  // mov
            'public.avi'          // avi (없을 수도 있지만 추가해도 무방)
          ],
        ),
      ],
    );

    if (result != null) {
      await uploadVideoFile(context, result);
    }
  }

  const Next1({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final scaleX = size.width / 393;
    final scaleY = size.height / 852;
    return Scaffold(
        body: Container(
          width: 393*scaleX,
          height: 852*scaleY,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 29*scaleX,
                top: 366*scaleY,
                child: Opacity(
                  opacity: 0.76,
                  child: Text(
                    '이전 영상',
                    style: TextStyle(
                      color: const Color(0xFF767676),
                      fontSize: 12,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w500,
                      height: 1.40,
                      letterSpacing: -0.30,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 4 * scaleX,
                top: 159 * scaleY,
                child: GestureDetector(
                  onTap: () => _uploadVideo(context),
                  child: Container(
                    width: 385 * scaleX,
                    height: 197 * scaleY,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('make/upload.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 24 * scaleX,
                top: 56 * scaleY,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Mysecond()), // 여기에 이동할 페이지 클래스 이름 작성
                    );
                  },
                  child: Container(
                    width: 345 * scaleX,
                    height: 85 * scaleY,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('make/image1.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 4*scaleX,
                top: 401*scaleY,
                child: Container(
                  width: 385*scaleX,
                  height: 479*scaleY,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("make/pic.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}

class Next2 extends StatelessWidget {
  const Next2({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final scaleX = size.width / 393;
    final scaleY = size.height / 852;
    double scaleText=(scaleY+scaleX)/2;
    return Scaffold(
      body: Container(
        width: 393*scaleX,
        height: 852*scaleY,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            Positioned(
              left: 24 * scaleX,
              top: 56 * scaleY,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Mysecond()), // 여기에 이동할 페이지 클래스 이름 작성
                  );
                },
                child: Container(
                  width: 345 * scaleX,
                  height: 85 * scaleY,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('make/image2.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 24*scaleX,
              top: 168*scaleY,
              child: Container(
                width: 345*scaleX,
                height: 44*scaleY,
                decoration: ShapeDecoration(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 38*scaleX,
              top: 179*scaleY,
              child: SizedBox(
                width: 109*scaleX,
                height: 23*scaleY,
                child: Text(
                  '작품 원리',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w400,
                    height: 0,
                    letterSpacing: -0.30,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 24*scaleX,
              top: 224*scaleY,
              child: Container(
                width: 345*scaleX,
                height: 92*scaleY,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 38*scaleX,
              top: 238*scaleY,
              child: SizedBox(
                width: 317*scaleX,
                height: 64*scaleY,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '영상에서 인물의 표정을 분석하고, 합성된 얼굴을 탐지하는 AI 기반 서비스입니다. \n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily:'Pretendard',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: '정확한 분석으로 진짜와 가짜를 판별합니다.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 24*scaleX,
              top: 328*scaleY,
              child: Container(
                width: 345*scaleX,
                height: 44*scaleY,
                decoration: ShapeDecoration(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 38*scaleX,
              top: 339*scaleY,
              child: SizedBox(
                width: 149*scaleX,
                height: 23*scaleY,
                child: Text(
                  '업데이트 예정',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w400,
                    height: 0,
                    letterSpacing: -0.30,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 24*scaleX,
              top: 384*scaleY,
              child: Container(
                width: 345*scaleX,
                height: 98*scaleY,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 38*scaleX,
              top: 398*scaleY,
              child: SizedBox(
                width: 317*scaleX,
                height: 64*scaleY,
                child: Text(
                  '후엔 CNN이 아닌, 다른 알고리즘을 사용하여 더 정밀한 분석이 가능하도록 개선할 예정입니다. 또한, 실시간 탐지 기능과 다양한 언어 지원 기능도 추가할 계획입니다.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 24*scaleX,
              top: 523*scaleY,
              child: Container(
                width: 345*scaleX,
                height: 195*scaleY,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 37*scaleX,
              top: 537*scaleY,
              child: SizedBox(
                width: 310*scaleX,
                height: 163*scaleY,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '개발 추구 가치\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: 'AI 기술을 활용한 사회적 문제 해결에 기여하고자 합니다. \n특히, 가짜 영상으로 인한 피해를 최소화하고, 신뢰할 수 있는 정보 제공을 목표로 하고 있습니다. \n또한, 누구나 쉽게 사용할 수 있는 인터페이스를 제공하여 접근성을 높이는 것도 중요한 가치입니다.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 98*scaleX,
              top: 790*scaleY,
              child: Container(
                width: 197*scaleX,
                height: 48*scaleY,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("logo/logo.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

