import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String playerName;
  HomeScreen({Key? key, required this.playerName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('POPTICLE'),
        automaticallyImplyLeading: false,
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView( // 스크롤 가능한 레이아웃 추가
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/dash.png',
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              '$playerName \n Enjoy Your POPTICLE',
              textAlign: TextAlign.center, // 텍스트 중앙 정렬
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor, // 테마 색상 사용
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // 버튼 클릭 시 수행할 동작
              },
              child: Text('Explore Now'),
            ),
          ],
        ),
      ),
    );
  }
}
