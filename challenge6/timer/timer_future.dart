class TimerByFuture {
  int _timeInSeconds = 10;
  void timer() {
    Future.delayed(Duration(seconds: _timeInSeconds), () {
      print('time finshed');
    });
  }
}
