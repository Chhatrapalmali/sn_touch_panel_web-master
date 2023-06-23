import 'package:flutter/material.dart';
import 'package:sn_touch_panel_web/helper/size_config.dart';

import '../controllers/module_controller.dart';

class CustomSelectorPhone<T> extends StatefulWidget {
  final ModuleController menuController;
  final String title;
  final Function onClickedItem;
  final bool isSelected;

  const CustomSelectorPhone({
    Key? key,
    required this.title,
    required this.menuController,
    required this.onClickedItem,
    required this.isSelected,
  }) : super(key: key);

  @override
  State<CustomSelectorPhone> createState() => _CustomSelectorPhoneState();
}

class _CustomSelectorPhoneState extends State<CustomSelectorPhone>
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
    _expandAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
        link: _layerLink,
        child: InkWell(
          onTap: _toggleDropdown,
          child: Container(
            color: widget.isSelected
                ? Theme.of(context).colorScheme.background
                : Colors.transparent,
            child: SizedBox(
              height: 60,
              width: SizeConfig.screenWidth! * 0.33,
              child: Center(
                child: Text(
                  widget.title,
                  style: TextStyle(
                      color: widget.isSelected
                          ? Colors.teal
                          : Theme.of(context).colorScheme.onPrimary,
                      fontWeight: widget.isSelected
                          ? FontWeight.bold
                          : FontWeight.normal),
                ),
              ),
            ),
          ),
        ));
  }

  OverlayEntry _createOverlayEntry() {
    RenderBox? renderBox = context.findRenderObject() as RenderBox?;
    var size = renderBox?.size;
    var offset = renderBox?.localToGlobal(Offset.zero);
    var topOffset = offset!.dy + size!.height + 5;
    return OverlayEntry(
      builder: (context) => GestureDetector(
        onTap: () => _toggleDropdown(close: true),
        behavior: HitTestBehavior.translucent,
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Positioned(
                left: offset.dx,
                top: topOffset,
                width: SizeConfig.screenWidth! * 0.40,
                child: CompositedTransformFollower(
                  offset: Offset(0, size.height + 5),
                  link: _layerLink,
                  showWhenUnlinked: false,
                  child: Material(
                    color: Colors.teal.shade200,
                    elevation: 5,
                    borderRadius: BorderRadius.circular(10),
                    child: SizeTransition(
                      axisAlignment: 1,
                      sizeFactor: _expandAnimation,
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              physics: const AlwaysScrollableScrollPhysics(),
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
                                        ".${widget.title.replaceAll(' ', '')}(Auto(Sec))(${widget.menuController.automationNode[i]})";
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
