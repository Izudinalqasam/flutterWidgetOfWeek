import 'package:flutter/material.dart';
import 'package:flutter_widget_week/AbsorbPointer/AbsorbPointerWidget.dart';
import 'package:flutter_widget_week/AlertDialog/CupertinoAlertDialogWidget.dart';
import 'package:flutter_widget_week/AlertDialog/MaterialAlertDialogWidget.dart';
import 'package:flutter_widget_week/AnimatedBuilder/AnimatedBuilderWidget.dart';
import 'package:flutter_widget_week/AnimatedContainer/AnimatedContainerWidget.dart';
import 'package:flutter_widget_week/AnimatedCrossFade/AnimatedCrossFadeWidget.dart';
import 'package:flutter_widget_week/AnimatedIcon/AnimatedIconWidget.dart';
import 'package:flutter_widget_week/AnimatedList/AnimatedListWidget.dart';
import 'package:flutter_widget_week/AnimatedOpacity/AnimatedOpacityWidget.dart';
import 'package:flutter_widget_week/AnimatedPadding/AnimatedPaddingWidget.dart';
import 'package:flutter_widget_week/AnimatedPositioned/AnimatedPositionedWidget.dart';
import 'package:flutter_widget_week/AnimatedSwitcher/AnimatedSwitcherWidget.dart';
import 'package:flutter_widget_week/AspectRasio/AspectRasioWidget.dart';
import 'package:flutter_widget_week/BackdropFilter/BackdropFilterWidget.dart';
import 'package:flutter_widget_week/ClipRRect/ClipRRectWidget.dart';
import 'package:flutter_widget_week/ClipRRect/CustomClipPath.dart';
import 'package:flutter_widget_week/ColorFiltered/ColorFilteredWidget.dart';
import 'package:flutter_widget_week/ConstrainedBox/ConstrainedBoxWidget.dart';
import 'package:flutter_widget_week/Container/ContainerWidget.dart';
import 'package:flutter_widget_week/CupertinoActionSheet/CuppertinoWidget.dart';
import 'package:flutter_widget_week/CustomPaint/CustomPaintWidget.dart';
import 'package:flutter_widget_week/DataTable/DataTableWidget.dart';
import 'package:flutter_widget_week/DefaultTabController_TabBar_TabView/DefaultTabContrBarViewWidget.dart';
import 'package:flutter_widget_week/Dismissible/DismissibleListWidget.dart';
import 'package:flutter_widget_week/Dismissible/DismissibleWidget.dart';
import 'package:flutter_widget_week/Draggable/DraggableWidget.dart';
import 'package:flutter_widget_week/DraggableScrollableSheet/DraggableScrollableSheetWidget.dart';
import 'package:flutter_widget_week/FadeInImage/FadeInImageWidget.dart';
import 'package:flutter_widget_week/FadeTransition/FadeTransitionWidget.dart';
import 'package:flutter_widget_week/FittedBox/FittedBoxWidget.dart';
import 'package:flutter_widget_week/Flexible/FlexibleWidget.dart';
import 'package:flutter_widget_week/FloatingActionButton/FloatingActionButtonWidget.dart';
import 'package:flutter_widget_week/FractionallySizedBox/FractionallySizedBoxWidget.dart';
import 'package:flutter_widget_week/FutureBuilder/FutureBuilderWidget.dart';
import 'package:flutter_widget_week/Hero/HeroWidgetFirstPage.dart';
import 'package:flutter_widget_week/Image/ImageWidget.dart';
import 'package:flutter_widget_week/IndexStack/IndexedStactkWidget.dart';
import 'package:flutter_widget_week/InheritedModel/MainInheritedModel.dart';
import 'package:flutter_widget_week/InheritedModel/color_model.dart';
import 'package:flutter_widget_week/InheritedWidget/InheritedWidgetMain.dart';
import 'package:flutter_widget_week/InheritedWidget/InheritedWidgetModel.dart';
import 'package:flutter_widget_week/LayoutBuilder/LayoutBuilderWidget.dart';
import 'package:flutter_widget_week/LimitedBox/LimitedBoxWidget.dart';
import 'package:flutter_widget_week/LimitedBox/LimitedBoxWidget2.dart';
import 'package:flutter_widget_week/ListTile/ListTileWidget.dart';
import 'package:flutter_widget_week/ListView/ListViewDynamic.dart';
import 'package:flutter_widget_week/ListView/ListViewStatic.dart';
import 'package:flutter_widget_week/MediaQuery/MediaQueryWidget.dart';
import 'package:flutter_widget_week/Opacity/OpacityWidget.dart';
import 'package:flutter_widget_week/PageView/PageViewWidget.dart';
import 'package:flutter_widget_week/PersistentFooter/PersistentFooterWidget.dart';
import 'package:flutter_widget_week/Placeholder/CacheWidget.dart';
import 'package:flutter_widget_week/Placeholder/PlaceHolderWidget.dart';
import 'package:flutter_widget_week/Positioned/PositionedWidget.dart';
import 'package:flutter_widget_week/Range_Cupertino_Slider/SliderWidgetExample.dart';
import 'package:flutter_widget_week/ReorderableListview/ReorderableListviewWidget.dart';
import 'package:flutter_widget_week/RichText/RichTextWidget.dart';
import 'package:flutter_widget_week/SelectableText/SelectableTextWidget.dart';
import 'package:flutter_widget_week/SizedBox/SizedBoxWidget.dart';
import 'package:flutter_widget_week/SliverAppBar/SliverAppBarWidget.dart';
import 'package:flutter_widget_week/SliverAppBar/SliverAppBarWidget2.dart';
import 'package:flutter_widget_week/SnackBar/SnackBarWidget.dart';
import 'package:flutter_widget_week/Spacer/SpacerWidget.dart';
import 'package:flutter_widget_week/Stack/StackWidget1.dart';
import 'package:flutter_widget_week/Stack/StackWidget2.dart';
import 'package:flutter_widget_week/StreamBuilder/StreamBuilderWidget.dart';
import 'package:flutter_widget_week/Table/TableWidget.dart';
import 'package:flutter_widget_week/TooggleButton/ToggleButtonWidget.dart';
import 'package:flutter_widget_week/Transform/TransformWidget.dart';
import 'package:flutter_widget_week/TweenAnimationBuilder/TweenAnimationBuilderWidget.dart';
import 'package:flutter_widget_week/ValueListenableBuilder/MyCustomListenableBuilder.dart';
import 'package:flutter_widget_week/ValueListenableBuilder/ValueListenableBuilderWidget.dart';
import 'package:flutter_widget_week/Wrap/WrapWidget.dart';
import 'package:flutter_widget_week/align/AlignWidget.dart';
import 'package:flutter_widget_week/drawer/DrawerWidget.dart';
import 'package:flutter_widget_week/toolips/ToolipsWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // For inherited widget it must be place in the parent of app (MaterialApp)
    return ColorModelContainer(
      child: MaterialApp(
        title: 'Flutter Demo',
        home: SnackBarWidget(),
      ),
    );
  }
}
