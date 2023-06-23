import 'package:flutter/material.dart';

import '../controllers/module_controller.dart';
import '../views/home_screen/components/drawer_list_tile.dart';

class CustomDropDown<T> extends StatefulWidget {
  final ModuleController menuController;
  final String tile;
  final bool selected;
  final Function onClickedItem;

  const CustomDropDown({
    Key? key,
    required this.tile,
    required this.menuController,
    required this.onClickedItem,
    required this.selected,
  }) : super(key: key);

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  final LayerLink _layerLink = LayerLink();
  late Animation<double> _expandAnimation;
  late OverlayEntry _overlayEntry;
  bool _isOpen = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
    _expandAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
        link: _layerLink,
        child: DrawerListTile(
          title: widget.tile,
          subTitle: '',
          tileColor: Colors.transparent,
          leading: const SizedBox(),
          press: _toggleDropdown,
          trailing: const SizedBox(),
        ));
  }

  OverlayEntry _createOverlayEntry() {
    RenderBox? renderBox = context.findRenderObject() as RenderBox?;
    var size = renderBox?.size;
    var offset = renderBox?.localToGlobal(Offset.zero);
    var changeSize = (size!.height + 5);
    if (MediaQuery.of(context).size.height - offset!.dy < 200 ||
        MediaQuery.of(context).size.height - offset.dy < 0) {
      changeSize = -(size.height + 100);
    }
    var topOffset = offset.dy + changeSize;
    return OverlayEntry(
      builder: (context) => GestureDetector(
        onTap: () => _toggleDropdown(close: true),
        behavior: HitTestBehavior.translucent,
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                left: offset.dx,
                top: topOffset,
                width: 201,
                child: CompositedTransformFollower(
                  offset: Offset(0, changeSize),
                  link: _layerLink,
                  showWhenUnlinked: false,
                  child: Material(
                    color: Colors.teal.shade200,
                    elevation: 5,
                    borderRadius: BorderRadius.circular(10),
                    child: ScaleTransition(
                      scale: _expandAnimation,
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: 4,
                              itemBuilder: (context, i) {
                                return InkWell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      widget.menuController.automationNode[i],
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  onTap: () {
                                    widget.menuController.setTIType("TI");
                                    widget.menuController.tiAutomation.value =
                                        ".${widget.tile.replaceAll(' ', '')}(Auto(Sec))(${widget.menuController.automationNode[i]})";
                                    widget.onClickedItem();
                                    _toggleDropdown();
                                  },
                                );
                              })),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _toggleDropdown({bool close = false}) async {
    if (_isOpen || close) {
      await _animationController.reverse();
      _overlayEntry.remove();
      setState(() {
        _isOpen = false;
      });
    } else {
      _overlayEntry = _createOverlayEntry();
      Overlay.of(context).insert(_overlayEntry);
      setState(() => _isOpen = true);
      _animationController.forward();
    }
  }
}
