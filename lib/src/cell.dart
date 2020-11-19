/*
 * @Author: gaoyong06@qq.com 
 * @Date: 2020-11-19 15:43:34 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2020-11-19 17:21:25
 */

import 'package:flutter/material.dart';

/// Cell单元格
///
//单元格大小
enum CellSize {
  large, //大号单元格
  small, //小号单元格(默认)
}

//右侧箭头方向
enum CellArrowDirection {
  up, //箭头向上
  down, //箭头向下
  left, //箭头向左
  right, //箭头向右
}

class Cell extends StatelessWidget {
  //左侧标题
  final String title;

  //右侧内容
  final String value;

  //标题下方的描述信息
  final String label;

  //单元格大小
  final CellSize size;

  //左侧图标
  final Widget icon;

  //点击后跳转的链接地址
  final String url;

  //点击后跳转的目标路由对象
  final String to;

  //是否显示内边框
  final bool border;

  //是否在跳转时替换当前页面历史
  final bool replace;

  //是否开启点击反馈
  final bool clickable;

  //是否展示右侧箭头并开启点击反馈
  final bool isLink;

  //是否显示表单必填星号
  final bool required;

  //是否使内容垂直居中
  final bool center;

  //右侧箭头方向
  final CellArrowDirection arrowDirection;

  const Cell(
      {Key key,
      this.title,
      this.value,
      this.label,
      this.size = CellSize.small,
      this.icon,
      this.url,
      this.to,
      this.border = true,
      this.replace = false,
      this.clickable = false,
      this.isLink = false,
      this.required = false,
      this.center = false,
      this.arrowDirection = CellArrowDirection.right})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(''),
    );
  }
}
