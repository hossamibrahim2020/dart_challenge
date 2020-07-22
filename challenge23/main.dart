/*
Write a procedure(sub) drawstars that will draw a sequence of
spaces followed by a sequence of stars. It should accept two parameters—the number of spaces and the number of stars.
E.g
Drawstars(3,5) would produce
_ _ _ * * * * * ( _ indicates a space!)
Use your procedure to draw
         *
       * * *
       * * *
         *
       * * *
   * * * * * * *
       * * *
        * *
      * * * *

 */

import 'package:flutterinnative/challenge23/draw/custom_shap.dart';

final DrawCustomShap drawCustomShap = DrawCustomShap();
main(){
  drawCustomShap.customShap();
}
