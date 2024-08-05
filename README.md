## SafeArea Widget

- 그 안에 있는 모든 것은 특정 공간에 있을 거라고 보장한다.
  - 공간은 확실하게 뭔가에 가려지지 않는다.

```dart
@override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("Sign up for TikTok"),
          ],
        ),
      ),
    );
  }
```

# 이벤트 감지

- eventListener
- GestureDetector

# 페이지 이동

Navigator

- 이벤트 감지 시 LoginScreen()으로 이동

sign_up_screen.dart

```dart
  void onLoginTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
  }
```

## Navigator에 push가 아닌 pop을 하면 그 전 화면으로 이동한다.

- 즉, 유저가 보고 있는 현재 화면을 스택에서 제거한다.
  login_screen.dart

```dart
  void onLoginTap(BuildContext context) {
    Navigator.of(context).pop();
  }
```

# FractionallySizedBox

- 부모의 크기에 비례해서 크기를 정하게 해주는 Box 위젯
  - ex) 부모의 크기가 1000px이고, FractionallySizedBox의 widthFactor가 1이라면 FractionallySizedBox의 너비는 부모의 너비의 100%가 된다.
  - ex) 부모의 크기가 1000px이고, FractionallySizedBox의 widthFactor가 0.5이라면 FractionallySizedBox의 너비는 부모의 너비의 50%가 된다.

# fontAwsome 설치

`dependencies: font_awesome_flutter: 10.3.0`

# Expanded 위젯

- 사용할 수 있는 모든 공간을 사용한다.

```dart
Expanded(
              child: Text(
                text,
                style: const TextStyle(
                    fontSize: Sizes.size16, fontWeight: FontWeight.w800),
                textAlign: TextAlign.center,
              ),
            ),
```

# Stack 위젯

- 위젯들을 위에다가 쌓을 수 있게 한다.
  - 즉, 요소들이 서로 겹치는걸 허용한다.

## Stack의 Align 위젯

- stack에 있는 Widget 하나의 정렬만 바꿀 수 있게 해준다.

```dart
child: Stack(
          alignment: Alignment.center,
          children: [
             Align(
              alignment: Alignment.centerLeft,
              child: icon,
            ),
            Expanded(
              child: Text(
                text,
                style: const TextStyle(
                    fontSize: Sizes.size16, fontWeight: FontWeight.w800),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
```

# dart에서 메서드를 private으로 선언하는 방법

- 메서드의 이름 앞에 \_를 달아준다.
  - dart에는 public, private, protected와 같은 접근 제한자가 없기 때문이다.

# TextField

- 유저가 문자를 입력할 수 있는 위젯이다.

```dart
TextField(
  cursorColor: Theme.of(context).primaryColor,
  decoration: const InputDecoration(hintText: "Username"),
),
```

- hintText는 placeholder와 동일하다.

# Controller

- 코드, 메서드 등으로 위젯을 컨트롤 할 수 있게 해준다.
  - statefulWidget에서 사용한다.

# AnimatedDefaultTextStyle

- 텍스트가 바뀔 때 에니메이션 효과를 준다.

# dispose

- 컨트롤러 객체가 제거될 때 변수에 할당 된 메모리를 해제하기 위해 사용한다.

# Email의 정규표현식

```
r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"
```

이메일이 정규표현식에 맞는지 확인

```dart
    final regExp = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
        if(!regExp.hasMatch(_email)){

        }
```

# focus된 요소를 unfocus 시키기

```dart
void _onScaffoldTap() {
    FocusScope.of(context).unfocus();
  }
```

# onEditingComplete

- 키보드에서 enter키를 눌렀을때의 동작을 정의할 수 있다.

# Form의 Global Key

- 고유 식별자와 같은 역할을 한다.
- Global Key를 사용하면 폼의 state에 접근할 수 있다.
- 폼의 메서드를 실행시킬 수 있다.

Form을 save하면 모든 텍스트 입력에 onSaved 콜백 함수를 실행하게 된다.

# onBoarding

- 유저가 가장 처음 앱을 실행했을 때 유저를 맞이하고 앱에 관해 설명해주는 방식이다.

# Wrap

- css의 wrap과 동일하다
- runSpacing
  - 세로 영역의 갭을 조절한다.
- spacing
  - 가로 영역의 갭을 조절한다.

# AnimatedOpacity

- 움직임에 따라서 투명도를 조절하는 widget이다.

# GlobalKey()

- GlobalKey()를 이용하여 전부 다른화면임을 플러터에게 알려줄 수 있다.
  - 즉, 플러터가 각 화면을 서로 다른 widget인 것 처럼 렌더링해준다.

```dart
final screens = [
  StfScreen(key: GlobalKey()),
  StfScreen(key: GlobalKey()),
  Container(),
  StfScreen(key: GlobalKey()),
  StfScreen(key: GlobalKey()),
]
```

# Offstage widget

- widget이 안 보이게 하면서 계속 존재하게 해준다.

```dart
Stack(
        children: [
          Offstage(
            offstage: _selectedIndex != 0,
            child: const StfScreen(),
          ),
          Offstage(
            offstage: _selectedIndex != 1,
            child: const StfScreen(),
          ),
          Offstage(
            offstage: _selectedIndex != 3,
            child: const StfScreen(),
          ),
          Offstage(
            offstage: _selectedIndex != 4,
            child: const StfScreen(),
          ),
        ],
      ),
```

# Positioned widget

- Stack 내부의 element를 이동시킬 수 있게 해준다.

# addAll

한 리스트에 있는 모든 항목들을 다른 리스트에 추가한다.

# lib>features>videos>widgets>video_post.dart

- Positioned.fill
  - 화면 전체를 채우는 widget을 만든다.

# StatefulWidget의 property를 state에서 접근하는 방법

- widget을 통해 접근한다.
  - widget.을 이용하여 위젯 자체에 접근할 수 있다.

```dart
  final Function onVideoFinished;

  const VideoPost({
    super.key,
    required this.onVideoFinished,
  });

void dispose() {
    _videoPlayerController.dispose();
    super.dispose();

    widget.onVideoFinished;
  }
```

# IgnorePointer Widget

- 이벤트를 무시한다.

# with SingleTickerProviderStateMixin

- with 뒤에 mixin을 사용하면 그 클래스를 복사해오겠다는 의미이다.
  - 클래스의 메서드와 속성 모두 복사
  - 즉, 클래스를 확장할 필요가 없다.

```dart
class _VideoPostState extends State<VideoPost> with SinglePlayerProviderStateMixin{

}
```

# SingleTickerProviderStateMixin

- 애니메이션 controller가 하나만 있다면 SingleTickerProviderStateMixin을 사용한다.
- 위젯이 화면에 보일 때만 Ticker를 제공한다.
  - 즉, 위젯이 화면에 보여지고 있을 때만 tick하는 Ticker를 제공한다.
  - Ticker은 애니메이션의 매 프레임마다 callback을 호출한다.
- 즉, 위젯이 화면에 있을 때만 작동하게 한다.

# TickerProvidertateMixin

- 애니메이션 controller가 여러개 있다면 TickerProviderStateMixin을 사용한다.

# CircleAvatar

- 이미지가 들어있는 원을 제공한다.

# RefreshIndicator

- 유저가 당겨서 타임라인을 새로고침 할 때 사용하기 좋다.
- onRefresh 메소드는 async를 하거나 future를 반환해야한다.

```dart
  Future<void> _onRefresh() {
    return Future.delayed(
      const Duration(seconds: 5),
    );
  }
  RefreshIndicator(
    controller: _pageController,
  )
```

- Future.delayed를 사용하여 future가 있는 것처럼 동작 가능하다.
